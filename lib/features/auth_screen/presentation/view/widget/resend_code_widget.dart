import 'package:arch_team_power/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResendCodeWidget extends StatelessWidget {
  const ResendCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).didnt_receive_code,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Norsal',
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 3),
        Text(
          S.of(context).resend_it,
          style: TextStyle(
            color: Color(0xffDB9448),
            fontFamily: 'Norsal',
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
