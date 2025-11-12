import 'package:arch_team_power/features/details_screen/widget/dialog_action_container.dart';
import 'package:arch_team_power/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RateDialogActions extends StatelessWidget {
  const RateDialogActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        DialogActionContainer(
          color: Color(0xffD2B48C),
          title: S.of(context).confirm,
          textColor: Colors.white,
        ),
        SizedBox(width: 10.w),
        DialogActionContainer(
          color: Color(0xFFD0D0D0),
          title: S.of(context).cancel,
          textColor: Colors.black,
        ),
      ],
    );
  }
}
