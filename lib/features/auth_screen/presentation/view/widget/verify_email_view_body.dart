import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:arch_team_power/core/routes/app_text_style.dart';
import 'package:arch_team_power/features/auth_screen/presentation/view/widget/auth_button.dart';
import 'package:arch_team_power/features/auth_screen/presentation/view/widget/custom_app_bar.dart';
import 'package:arch_team_power/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class VerifyEmailViewBody extends StatelessWidget {
  const VerifyEmailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.h),
          CustomAppBar(title: S.of(context).check_email),
          SizedBox(height: 40.h),
          Image.asset('assets/image/verify_avatar.png'),
          SizedBox(height: 41.h),
          Text(
            S.of(context).password_recovery,
            textAlign: TextAlign.center,
            style: AppTextStyles.syleNorsalRegular14(
              context,
            ).copyWith(color: Color(0xff8A8A8A)),
          ),
          SizedBox(height: 30.h),
          AuthButton(
            title: S.of(context).check_your_email,
            buttonColor: Color(0xffD2B48C),
          ),
          SizedBox(height: 15.h),
          AuthButton(
            onTap: () => GoRouter.of(context).push(AppRouter.kOtpView),
            title: S.of(context).confirm_code,
            buttonColor: Color(0xffD2B48C),
          ),
        ],
      ),
    );
  }
}
