import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:arch_team_power/features/auth_screen/presentation/view/widget/auth_button.dart';
import 'package:arch_team_power/features/auth_screen/presentation/view/widget/count_up_timer.dart';
import 'package:arch_team_power/features/auth_screen/presentation/view/widget/custom_app_bar.dart';
import 'package:arch_team_power/features/auth_screen/presentation/view/widget/otp.dart';
import 'package:arch_team_power/features/auth_screen/presentation/view/widget/resend_code_widget.dart';
import 'package:arch_team_power/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OtpViewBody extends StatelessWidget {
  const OtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        CustomAppBar(title: S.of(context).code_verification),
        SizedBox(height: 48.h),
        Center(child: CountUpTimer()),
        SizedBox(height: 13.5.h),
        Otp(),
        SizedBox(height: 41.5.h),
        AuthButton(
          onTap: () => GoRouter.of(context).push(AppRouter.kNewPasswordView),
          title: S.of(context).send,
          buttonColor: Color(0xffD2B48C),
        ),
        SizedBox(height: 14.h),
        ResendCodeWidget(),
      ],
    );
  }
}
