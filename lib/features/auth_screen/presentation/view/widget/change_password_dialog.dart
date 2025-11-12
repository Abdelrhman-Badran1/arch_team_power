import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChangePasswordDialog extends StatelessWidget {
  const ChangePasswordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      elevation: 0,
      backgroundColor: Color(0xfff9f8f8),
      children: [
        Padding(
          padding: EdgeInsets.all(40.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/image/done_sticker.svg'),
              SizedBox(height: 45.h),
              Text(
                S.of(context).password_has_been_changed,
                textAlign: TextAlign.center,
                style: AppTextStyles.syleNorsalMedium16(
                  context,
                ).copyWith(color: Colors.black),
              ),
              SizedBox(height: 6),
              Text(
                S.of(context).your_password_has_been_successfully_changed,
                textAlign: TextAlign.center,
                style: AppTextStyles.syleNorsalRegular14(
                  context,
                ).copyWith(color: Color(0xff8A8A8A)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
