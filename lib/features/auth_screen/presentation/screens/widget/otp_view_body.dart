import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:arch_team_power/core/widgets/auth_button.dart';
import 'package:arch_team_power/features/auth_screen/presentation/screens/widget/count_up_timer.dart';
import 'package:arch_team_power/core/widgets/custom_app_bar.dart';
import 'package:arch_team_power/features/auth_screen/presentation/screens/widget/otp.dart';
import 'package:arch_team_power/features/auth_screen/presentation/screens/widget/resend_code_widget.dart';
import 'package:arch_team_power/l10n/app_localizations.dart';
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
        CustomAppBar(title: AppLocalizations.of(context)!.code_verification),
        SizedBox(height: 48.h),
        const Center(child: CountUpTimer()),
        SizedBox(height: 13.5.h),
        const Otp(),
        SizedBox(height: 41.5.h),
        CustomButton(
          onTap: () => GoRouter.of(context).push(AppRouter.kNewPasswordView),
          title: AppLocalizations.of(context)!.send,
          buttonColor: const Color(0xffD2B48C),
        ),
        SizedBox(height: 14.h),
        const ResendCodeWidget(),
      ],
    );
  }
}
