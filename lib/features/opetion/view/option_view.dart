import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/features/opetion/widget/option_body_widget.dart';
import 'package:flutter/material.dart';
class OptionView extends StatelessWidget {
  const OptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: OptionBodyWidget()
    );
  }
}
