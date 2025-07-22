import 'package:lilac_machine_test/features/auth/data/models/customer_detail_model.dart';

class AuthControllerState {
  final String? mobileNumber;

  AuthControllerState({this.mobileNumber});
}

class AuthControllerInitialState extends AuthControllerState {}

class AuthControllerLoadingState extends AuthControllerState {}

class AuthControllerErrorState extends AuthControllerState {
  final String error;

  AuthControllerErrorState({super.mobileNumber, required this.error});
}

class AuthControllerSuccessState extends AuthControllerState {
  final bool isLoadingVerify;
  final bool loginSuccess;
  final CustomerDetailsModel? custmerModel;
  AuthControllerSuccessState({
    this.custmerModel,
    required super.mobileNumber,
    required this.isLoadingVerify,
    required this.loginSuccess,
  });

  AuthControllerSuccessState copyWith({
    String? mobileNumber,
    bool? isLoadingVerify,
    bool? loginSuccess,
    CustomerDetailsModel? custmerModel,
  }) {
    return AuthControllerSuccessState(
      custmerModel: custmerModel??this.custmerModel,
      loginSuccess: loginSuccess ?? this.loginSuccess,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      isLoadingVerify: isLoadingVerify ?? this.isLoadingVerify,
    );
  }
}
