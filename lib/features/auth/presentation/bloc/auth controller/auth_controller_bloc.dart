import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lilac_machine_test/core/utils/message_helper.dart';
import 'package:lilac_machine_test/features/auth/data/models/current_user_pref_model.dart';
import 'package:lilac_machine_test/features/auth/data/models/customer_detail_model.dart';
import 'package:lilac_machine_test/features/auth/data/repo/send_otp_repo.dart';
import 'package:lilac_machine_test/features/auth/data/repo/verify_otp_repo.dart';
import 'package:lilac_machine_test/features/auth/presentation/bloc/auth%20controller/auth_controller_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthControllerBloc extends Cubit<AuthControllerState> {
  AuthControllerBloc() : super(AuthControllerInitialState());

  Future<void> onSendOTP(String mobileNumber) async {
    emit(AuthControllerLoadingState());
    final response = await SendOtpRepo.onSendOTP(mobileNumber);
    log(response.data.toString());
    if (response.isError) {
      _emitError(response.message ?? response.data.toString());
    } else {
      emit(
        AuthControllerSuccessState(
          mobileNumber: mobileNumber,
          loginSuccess: false,
          isLoadingVerify: false,
        ),
      );
    }
  }

  Future<void> onVerifyOTP(String otp) async {
    final currentState = state;
    if (currentState is AuthControllerSuccessState) {
      emit(currentState.copyWith(isLoadingVerify: true));
      // log(otp);
      // log()
      final response = await VerifyOtpRepo.verifyOTP(
        currentState.mobileNumber!,
        int.parse(otp),
      );

      if (response.isError) {
        _emitError(response.message ?? response.data.toString());
      } else {
        // final data = response.data as Map<String, dynamic>;
        // showToast("Login Success");
        //         log(data.toString());

        log(response.data.toString());
        log("-------------------------------------");
        final data = response.data as Map<String, dynamic>;
        final model = CustomerDetailsModel.fromJson(
          data
        );
        await _setUserData(model.name, model.authStatus.accessToken, model.id);
        emit(
          currentState.copyWith(
            loginSuccess: true,
            isLoadingVerify: false,
            custmerModel: model,
          ),
        );
      }
    }
  }

  void _emitError(String message) async {
    final currentState = state;
    if (currentState is AuthControllerSuccessState) {
      emit(AuthControllerErrorState(error: message));
      await Future.delayed(Duration(seconds: 2));
      emit(currentState);
    } else {
      emit(AuthControllerErrorState(error: message));
    }
  }

  Future<void> _setUserData(String name, String token, String id) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString("name", name);
    await pref.setString("id", id);
    await pref.setString('token', token);

    await getUserData;
  }

  Future<CurrentUserPrefModel> get getUserData async {
    final pref = await SharedPreferences.getInstance();
    final name = pref.getString("name") ?? '';
    final id = pref.getString("id") ?? '';
    final token = pref.getString('token') ?? '';
    log("Name : - $name");
    log("Id - $id");
    log("token - $token");

    return CurrentUserPrefModel(id: id, name: name, token: token);
  }

  Future<void> deletePref() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove("name");
    await pref.remove("id");
    await pref.remove('token');
  }
}
