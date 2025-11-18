import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/utils/app_icons.dart';
import 'package:arch_team_power/core/widgets/custom_text_field.dart';
import 'package:arch_team_power/core/widgets/auth_button.dart';
import 'package:arch_team_power/features/auth_screen/presentation/screens/widget/social_auth_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                      'إنشاء حساب',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.syleNorsalMedium17(context),
                    ),
                    SizedBox(height: 34.h),
                    CustomTextField(
                      textFieldTitle: 'البريد الإلكتروني',
                      hintText: 'ادخل البريد الإلكتروني',
                    ),

                    SizedBox(height: 20.h),
                    CustomTextField(
                      textFieldTitle: 'كلمة المرور',
                      hintText: 'كلمة المرور',
                      obscureText: true,
                      showEyeIcon: true,
                    ),

                    SizedBox(height: 20.h),
                    CustomTextField(
                      textFieldTitle: 'تأكيد كلمة المرور ',

                      hintText: 'ادخل كلمة المرور',
                      obscureText: true,
                      showEyeIcon: true,
                    ),

                    SizedBox(height: 8),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: null),
                            Text(
                              'أوافق علي الشروط والأحكام',
                              style: AppTextStyles.syleNorsalRegular10(
                                context,
                              ).copyWith(color: Color(0xAB282828)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 49.h),
                    CustomButton(
                      onTap: () => GoRouter.of(
                        context,
                      ).pushReplacement(AppRouter.kHomeScreen),
                      title: 'إنشاء حساب',
                      buttonColor: Color(0xffD2B48C),
                    ),

                    SizedBox(height: 21.h),
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
                    SizedBox(height: 40.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'لديك حساب ؟ ',
                          style: AppTextStyles.syleNorsalRegular14(context),
                        ),
                        GestureDetector(
                          onTap: () {
                            GoRouter.of(
                              context,
                            ).pushReplacement(AppRouter.kLoginScreen);
                          },
                          child: Text(
                            ' تسجيل دخول',
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
