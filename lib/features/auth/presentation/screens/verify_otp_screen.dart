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
import 'package:lilac_machine_test/core/utils/message_helper.dart';
import 'package:lilac_machine_test/core/utils/responsive_helper.dart';
import 'package:lilac_machine_test/features/auth/presentation/bloc/auth%20controller/auth_controller_bloc.dart';
import 'package:lilac_machine_test/features/auth/presentation/bloc/auth%20controller/auth_controller_state.dart';
import 'package:pinput/pinput.dart';

class VerifyOtpScreen extends StatelessWidget {
  final String mobileNumber;
  VerifyOtpScreen({super.key, required this.mobileNumber});
  final _pinputController = TextEditingController();
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
                if (state is AuthControllerSuccessState && state.loginSuccess) {
                  context.go(RoutePaths.home);
                }
              },
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          AppCustomeBackButton(),
                          Center(
                            child: Text(
                              "Enter your verification\ncode",
                              textAlign: TextAlign.center,
                              style: AppStyle.boldStyle(
                                color: AppColors.BLACK,
                                fontSize: ResponsiveHelper.fontLarge,
                              ),
                            ),
                          ),
                          AppSpacer(heightPortion: .09),
                          Row(
                            children: [
                              Text(
                                '+91${state.mobileNumber}. ',
                                style: AppStyle.mediumStyle(),
                              ),
                              InkWell(
                                onTap: () {
                                  showToast("Edit - phone number");
                                },
                                child: Text(
                                  "Edit",
                                  style: AppStyle.boldStyle(
                                    color: AppColors.BLUE,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          AppSpacer(heightPortion: .02),
                          Pinput(
                            controller: _pinputController,
                            validator: AppValidator.requiredValidator,
                            length: 6,

                            errorPinTheme: getPintheme(isError: true),
                            defaultPinTheme: getPintheme(),
                            focusedPinTheme: getPintheme(),
                            disabledPinTheme: getPintheme(),
                            followingPinTheme: getPintheme(),
                            submittedPinTheme: getPintheme(),
                          ),
                          AppSpacer(heightPortion: .03),
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
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Didn't get anything? No worries, let's try again.",
                                  style: AppStyle.normalStyle(),
                                ),
                                AppSpacer(heightPortion: .01),
                                InkWell(
                                  onTap: () {
                                    showToast("Resend Code");
                                  },
                                  child: Text(
                                    "Resend",
                                    style: AppStyle.boldStyle(
                                      color: AppColors.BLUE,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    AppCustomeButton(
                      isLoading:
                          state is AuthControllerSuccessState &&
                          state.isLoadingVerify,
                      title: "Verify",
                      onPress: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthControllerBloc>().onVerifyOTP(
                            _pinputController.text.trim(),
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

  PinTheme getPintheme({bool isError = false}) {
    return PinTheme(
      textStyle: AppStyle.boldStyle(fontSize: 18),
      width: ResponsiveHelper.wp / 6,
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.WHITE,
        border: Border.all(
          color: isError ? AppColors.ERROR : AppColors.GREYSHADE,
        ),

        borderRadius: BorderRadius.circular(ResponsiveHelper.borderRadiusSmall),
      ),
    );
  }
}
