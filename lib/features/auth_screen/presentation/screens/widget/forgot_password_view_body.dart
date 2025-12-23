import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/utils/app_assets.dart';
import 'package:arch_team_power/core/widgets/auth_button.dart';
import 'package:arch_team_power/core/widgets/custom_app_bar.dart';
import 'package:arch_team_power/core/widgets/custom_text_field.dart';
import 'package:arch_team_power/l10n/app_localizations.dart';
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
          CustomAppBar(
            title: AppLocalizations.of(context)!.forgot_password_appbar_title,
          ),
          SizedBox(height: 40.h),
          Image.asset(AppAssets.kForgotPasswordAvatar),
          SizedBox(height: 41.h),
          CustomTextField(
            hintText: AppLocalizations.of(
              context,
            )!.forgot_password_text_field_hint,
            textFieldTitle: AppLocalizations.of(
              context,
            )!.forgot_password_text_field_title,
          ),
          SizedBox(height: 42.h),
          CustomButton(
            onTap: () => GoRouter.of(context).push(AppRouter.kVerifyEmailView),
            title: Text(
              AppLocalizations.of(context)!.send_code,
              style: AppTextStyles.syleNorsalMedium15(
                context,
              ).copyWith(color: Colors.white),
            ),

            buttonColor: const Color(0xffD2B48C),
          ),
        ],
      ),
    );
  }
}
