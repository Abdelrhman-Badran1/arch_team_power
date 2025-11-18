import 'package:arch_team_power/core/utils/app_assets.dart';
import 'package:arch_team_power/core/widgets/auth_button.dart';
import 'package:arch_team_power/features/auth_screen/presentation/screens/widget/change_password_dialog.dart';
import 'package:arch_team_power/core/widgets/custom_app_bar.dart';
import 'package:arch_team_power/core/widgets/custom_text_field.dart';
import 'package:arch_team_power/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPasswordViewBody extends StatelessWidget {
  const NewPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.h),
          CustomAppBar(title: S.of(context).new_password),
          SizedBox(height: 40.h),
          Image.asset(AppAssets.kNewPasswordAvater),
          SizedBox(height: 41.h),
          CustomTextField(
            obscureText: true,
            showEyeIcon: true,
            hintText: S.of(context).enter_new_password,
            textFieldTitle: S.of(context).new_password,
          ),

          SizedBox(height: 21.h),

          CustomTextField(
            obscureText: true,
            showEyeIcon: true,
            hintText: S.of(context).confirm_password,
            textFieldTitle: S.of(context).enter_new_password,
          ),
          SizedBox(height: 35.h),
          CustomButton(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return ChangePasswordDialog();
                },
              );
            },
            title: S.of(context).change_password,
            buttonColor: Color(0xffD2B48C),
          ),
        ],
      ),
    );
  }
}
