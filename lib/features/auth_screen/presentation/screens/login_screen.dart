import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/utils/app_icons.dart';
import 'package:arch_team_power/core/widgets/custom_text_field.dart';
import 'package:arch_team_power/core/widgets/auth_button.dart';
import 'package:arch_team_power/features/auth_screen/presentation/screens/widget/social_auth_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xfff9f8f8),
          body: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 13.86.w,
                vertical: 28.h,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'تسجيل الدخول',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.syleNorsalMedium17(context),
                    ),
                    const SizedBox(height: 48.0),
                    CustomTextField(
                      textFieldTitle: 'البريد الإلكتروني',
                      hintText: 'ادخل البريد الإلكتروني',
                    ),

                    const SizedBox(height: 16.0),
                    CustomTextField(
                      textFieldTitle: 'كلمة المرور',
                      hintText: 'كلمة المرور',
                      obscureText: true,
                      showEyeIcon: true,
                    ),

                    const SizedBox(height: 8.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: null),
                            Text(
                              'تذكرني',
                              style: AppTextStyles.syleNorsalRegular10(
                                context,
                              ).copyWith(color: Color(0xAB282828)),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            GoRouter.of(
                              context,
                            ).push(AppRouter.kForgotPasswordView);
                          },
                          child: Text(
                            'هل نسيت كلمة المرور؟',
                            style: AppTextStyles.syleNorsalRegular10(
                              context,
                            ).copyWith(color: Color(0xFFD2B48C)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 48.h),
                    CustomButton(
                      onTap: () => GoRouter.of(
                        context,
                      ).pushReplacement(AppRouter.kLangSelector),
                      title: 'تسجيل الدخول',
                      buttonColor: Color(0xffD2B48C),
                    ),
                    const SizedBox(height: 24.0),
                    Row(
                      children: [
                        Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'أو',
                            style: AppTextStyles.syleNorsalRegular14(context),
                          ),
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),
                    const SizedBox(height: 24.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialAuthItem(assetName: AppIcons.kGoogleIcon),
                        SizedBox(width: 11.w),
                        SocialAuthItem(assetName: AppIcons.kFaceBookIcon),
                        SizedBox(width: 11.w),
                        SocialAuthItem(assetName: AppIcons.kAppleIcon),
                      ],
                    ),
                    SizedBox(height: 138.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ليس لديك حساب؟ ',
                          style: AppTextStyles.syleNorsalRegular14(context),
                        ),
                        GestureDetector(
                          onTap: () {
                            GoRouter.of(
                              context,
                            ).push(AppRouter.kRegisterScreen);
                          },
                          child: Text(
                            'إنشاء حساب',
                            style: AppTextStyles.syleNorsalRegular14(
                              context,
                            ).copyWith(color: Color(0xffD2B48C)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
