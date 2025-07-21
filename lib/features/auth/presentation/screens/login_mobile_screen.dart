import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lilac_machine_test/config/router/route_paths.dart';
import 'package:lilac_machine_test/core/components/app_custome_back_button.dart';
import 'package:lilac_machine_test/core/components/app_custome_button.dart';
import 'package:lilac_machine_test/core/components/app_margin.dart';
import 'package:lilac_machine_test/core/components/app_spacer.dart';
import 'package:lilac_machine_test/core/theme/app_colors.dart';
import 'package:lilac_machine_test/core/theme/app_styles.dart';
import 'package:lilac_machine_test/core/utils/app_validator.dart';
import 'package:lilac_machine_test/core/utils/responsive_helper.dart';
import 'package:lilac_machine_test/features/auth/presentation/bloc/auth%20controller/auth_controller_bloc.dart';
import 'package:lilac_machine_test/features/auth/presentation/bloc/auth%20controller/auth_controller_state.dart';
import 'package:lilac_machine_test/features/auth/presentation/widgets/phone_input_field.dart';

class LoginMobileScreen extends StatelessWidget {
  LoginMobileScreen({super.key});
  final _phoneNumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppMargin(
          child: Form(
            key: _formKey,
            child: BlocConsumer<AuthControllerBloc, AuthControllerState>(
              listener: (context, state) {
                if (state is AuthControllerSuccessState) {
                  context.push(
                    RoutePaths.verifyMobile,
                    extra: {"mobileNumber": _phoneNumberController.text.trim()},
                  );
                }
              },
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: AppCustomeBackButton(),
                          ),
                          Text(
                            "Enter your phone\nnumber",
                            textAlign: TextAlign.center,
                            style: AppStyle.boldStyle(
                              color: AppColors.BLACK,
                              fontSize: ResponsiveHelper.fontLarge,
                            ),
                          ),
                          AppSpacer(heightPortion: .09),

                          PhoneInputField(controller: _phoneNumberController),

                          if (state is AuthControllerErrorState)
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    state.error,
                                    style: AppStyle.mediumStyle(
                                      color: AppColors.ERROR,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          AppSpacer(heightPortion: .015),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Fliq will send you a text with a verification code.",
                              style: AppStyle.normalStyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    AppCustomeButton(
                      isLoading: state is AuthControllerLoadingState,
                      title: "Next",
                      onPress: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthControllerBloc>().onSendOTP(
                            _phoneNumberController.text.trim(),
                          );
                        }
                      },
                    ),
                    AppSpacer(heightPortion: .025),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
