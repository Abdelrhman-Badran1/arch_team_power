import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "حالة الاشتراك",
            style: AppTextStyles.syleNorsalMedium14(
              context,
            ).copyWith(color: const Color(0xFF8A8A8A)),
          ),
          SizedBox(height: 8.h),

          /// ⭐ Progress bar + percentage inside + Animation
          TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: 0.75),
            duration: 700.ms,
            curve: Curves.easeOut,
            builder: (context, value, child) {
              return Stack(
                children: [
                  /// progress bar
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: LinearProgressIndicator(
                        borderRadius: BorderRadius.circular(24),
                        value: value,
                        minHeight: 15.h,
                        backgroundColor: Colors.grey[300],
                        valueColor: const AlwaysStoppedAnimation(
                          Color(0xffD4B08A),
                        ),
                      ),
                    ),
                  ),

                  /// percentage text
                  Positioned.fill(
                    child: Align(
                      child: Text(
                        "${(value * 100).toInt()}%",
                        style: AppTextStyles.syleNorsalMedium10(
                          context,
                        ).copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              );
            },
          ).animate().fadeIn(duration: 400.ms).slideY(begin: 0.15, end: 0),

          SizedBox(height: 20.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "تاريخ الانتهاء ",
                style: AppTextStyles.syleNorsalRegular14(
                  context,
                ).copyWith(color: const Color(0xFF8A8A8A)),
              ),
              Text(
                "23 / 12 / 2024",
                style: AppTextStyles.syleNorsalMedium14(
                  context,
                ).copyWith(color: const Color(0xFF8A8A8A)),
              ),
            ],
          ),

          SizedBox(height: 20.h),

          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                context.push(AppRouter.kSubscriptionScreen);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.r),
                  border: Border.all(color: const Color(0xffD4B08A)),
                ),
                child: Text(
                  "تجديد الاشتراك",
                  style: AppTextStyles.syleNorsalMedium12(
                    context,
                  ).copyWith(color: const Color(0xffD4B08A)),
                ),
              ),
            ).animate().scale(duration: 150.ms),
          ),
        ],
      ),
    );
  }
}
