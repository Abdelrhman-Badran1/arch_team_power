import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/widgets/custom_app_bar.dart';
import 'package:arch_team_power/features/Payment_Methods/widgets/custom_subscription_plans_item.dart';
import 'package:arch_team_power/features/Payment_Methods/widgets/subscription_plans_screen_actions.dart';
import 'package:arch_team_power/features/Payment_Methods/widgets/subscription_plans_screen_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriptionPlansScreenBody extends StatefulWidget {
  const SubscriptionPlansScreenBody({super.key});

  @override
  State<SubscriptionPlansScreenBody> createState() =>
      _SubscriptionPlansScreenBodyState();
}

class _SubscriptionPlansScreenBodyState
    extends State<SubscriptionPlansScreenBody> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        const CustomAppBar(title: ''),
        const SubscriptionPlansScreenHeader(),
        SizedBox(height: 32.h),
        Text(
          'اشترك للحصول على ميزات افضل',
          style: AppTextStyles.syleNorsalMedium17(
            context,
          ).copyWith(color: AppColors.primary),
        ),
        SizedBox(height: 45.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            3,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: CustomSubscriptionPlansItem(
                isActive: selectedIndex == index,
              ),
            ),
          ),
        ),
        SizedBox(height: 40.h),
        SubscriptionPlansScreenActions(
          subscripOnTap: () {},
          unSubscripOnTap: () {},
        ),
      ],
    );
  }
}
