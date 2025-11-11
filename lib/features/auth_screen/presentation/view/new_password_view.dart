import 'package:arch_team_power/features/auth_screen/presentation/view/widget/new_password_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff9f8f8),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.86.w),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: NewPasswordViewBody(),
          ),
        ),
      ),
    );
  }
}
