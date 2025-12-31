import 'package:arch_team_power/features/Payment_Methods/widgets/custom_subscription_plans_active_item.dart';
import 'package:arch_team_power/features/Payment_Methods/widgets/custom_subscription_plans_un_active_item.dart';
import 'package:flutter/material.dart';

class CustomSubscriptionPlansItem extends StatelessWidget {
  const CustomSubscriptionPlansItem({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? const CustomSubscriptionPlansActiveItem()
        : const CustomSubscriptionPlansUnActiveItem();
  }
}
