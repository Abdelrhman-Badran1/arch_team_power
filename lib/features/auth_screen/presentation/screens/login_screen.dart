import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xfff9f8f8),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 24.0,
            ),
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
                const SizedBox(height: 24.0),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      GoRouter.of(
                        context,
                      ).pushReplacement(AppRouter.kHomeScreen);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD2B48C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      'تسجيل الدخول',
                      style: AppTextStyles.syleNorsalMedium15(
                        context,
                      ).copyWith(color: Colors.white),
                    ),
                  ),
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
                    Container(
                      height: 58,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF3F1F1),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.g_translate),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Container(
                      height: 58,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF3F1F1),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.g_translate),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Container(
                      height: 58,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF3F1F1),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.g_translate),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 150.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ليس لديك حساب؟ ',
                      style: AppTextStyles.syleNorsalRegular14(context),
                    ),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kRegisterScreen);
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
    );
  }
}
