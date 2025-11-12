import 'package:arch_team_power/core/routes/app_text_style.dart';
import 'package:arch_team_power/generated/l10n.dart';
import 'package:flutter/material.dart';

class ResendCodeWidget extends StatelessWidget {
  const ResendCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).didnt_receive_code,
          style: AppTextStyles.syleNorsalRegular14(context),
        ),
        SizedBox(width: 3),
        Text(
          S.of(context).resend_it,
          style: AppTextStyles.syleNorsalRegular14(
            context,
          ).copyWith(color: Color(0xffDB9448)),
        ),
      ],
    );
  }
}
