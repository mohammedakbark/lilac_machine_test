import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lilac_machine_test/config/router/route_paths.dart';
import 'package:lilac_machine_test/core/components/app_custome_button.dart';
import 'package:lilac_machine_test/core/components/app_margin.dart';
import 'package:lilac_machine_test/core/components/app_spacer.dart';
import 'package:lilac_machine_test/core/constants/img_const.dart';
import 'package:lilac_machine_test/core/theme/app_colors.dart';
import 'package:lilac_machine_test/core/theme/app_styles.dart';
import 'package:lilac_machine_test/core/utils/message_helper.dart';
import 'package:lilac_machine_test/core/utils/responsive_helper.dart';

class LoginDecisionScreen extends StatelessWidget {
  const LoginDecisionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(ImgConst.decisionBgImg),
          ),
        ),
        child: SafeArea(
          child: AppMargin(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppSpacer(heightPortion: .05),
                    Image.asset(ImgConst.logo),
                    AppSpacer(heightPortion: .03),
                    Text(
                      "Connect. Meet. Love\nWith Fliq Dating",
                      textAlign: TextAlign.center,
                      style: AppStyle.largeStyle(
                        fontSize: ResponsiveHelper.fontXLarge,
                        color: AppColors.WHITE,
                      ),
                    ),
                  ],
                ),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppCustomeButton(
                      icon: Image.asset(ImgConst.google),
                      title: "Sign in with Google",
                      onPress: onPressGoogleAuth,
                      titleColor: AppColors.BLACK,
                      bgColor: AppColors.WHITE,
                    ),
                    AppSpacer(heightPortion: .015),
                    AppCustomeButton(
                      icon: Image.asset(ImgConst.facebook),
                      title: "Sign in with Facebook",
                      onPress: onPressFacebookAuth,
                      bgColor: AppColors.SECONDARY,
                    ),
                    AppSpacer(heightPortion: .015),
                    AppCustomeButton(
                      icon: Image.asset(ImgConst.phone),
                      title: "Sign in with phone number",
                      onPress: () => onPressMobileAuth(context),
                    ),

                    AppSpacer(heightPortion: .03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "By signing up, you agree to our ",
                          style: AppStyle.smallStyle(
                            color: AppColors.WHITE,
                            fontSize: ResponsiveHelper.fontSmall,
                          ),
                        ),
                        InkWell(
                          onTap: onPressTerms,
                          child: Text(
                            "Terms.",
                            style: AppStyle.mediumStyle(
                              color: AppColors.WHITE,
                              decoration: TextDecoration.underline,
                              fontSize: ResponsiveHelper.fontSmall,
                            ),
                          ),
                        ),
                        Text(
                          "See how we",
                          style: AppStyle.smallStyle(
                            color: AppColors.WHITE,
                            fontSize: ResponsiveHelper.fontSmall,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "use your data in our ",
                          style: AppStyle.smallStyle(
                            color: AppColors.WHITE,
                            fontSize: ResponsiveHelper.fontSmall,
                          ),
                        ),
                        InkWell(
                          onTap: onPressPrivacy,
                          child: Text(
                            "Privacy Policy.",
                            style: AppStyle.mediumStyle(
                              color: AppColors.WHITE,
                              decoration: TextDecoration.underline,
                              fontSize: ResponsiveHelper.fontSmall,
                            ),
                          ),
                        ),
                      ],
                    ),

                    AppSpacer(heightPortion: .03),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onPressGoogleAuth() {
    showToast("Google Sign in");
  }

  void onPressFacebookAuth() {
    showToast("Facebook Sign in");
  }

  void onPressMobileAuth(BuildContext context) {
    context.push(RoutePaths.loginMobile);
  }

  void onPressTerms() {
    showToast("Terms");
  }

  void onPressPrivacy() {
    showToast("Privacy - Policy");
  }
}
