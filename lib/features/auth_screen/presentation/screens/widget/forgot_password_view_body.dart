import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:arch_team_power/core/utils/app_assets.dart';
import 'package:arch_team_power/features/auth_screen/presentation/screens/widget/auth_button.dart';
import 'package:arch_team_power/core/widgets/custom_app_bar.dart';
import 'package:arch_team_power/core/widgets/custom_text_field.dart';
import 'package:arch_team_power/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.h),
          CustomAppBar(title: S.of(context).forgot_password_appbar_title),
          SizedBox(height: 40.h),
          Image.asset(AppAssets.kForgotPasswordAvatar),
          SizedBox(height: 41.h),
          CustomTextField(
            hintText: S.of(context).forgot_password_text_field_hint,
            textFieldTitle: S.of(context).forgot_password_text_field_title,
          ),
          SizedBox(height: 42.h),
          AuthButton(
            onTap: () => GoRouter.of(context).push(AppRouter.kVerifyEmailView),
            title: S.of(context).send_code,
            buttonColor: Color(0xffD2B48C),
          ),
        ],
      ),
    );
  }
}
