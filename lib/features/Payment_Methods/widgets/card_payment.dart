// ------------------ Custom Widget ------------------

import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardPaymentButton extends StatelessWidget {
  final double width;
  final VoidCallback onTap;
  final VoidCallback onIconTap;
  final String bankImageUrl;
  final String lastDigits;
  final String label;

  const CardPaymentButton({
    super.key,
    required this.width,
    required this.onTap,
    required this.onIconTap,
    required this.bankImageUrl,
    required this.lastDigits,
    required this.label,
  });

  String get maskedNumber => '*** $lastDigits';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.bacBottom, width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 1,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            InkWell(
              onTap: onIconTap,
              borderRadius: BorderRadius.circular(24),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset("image/iconDisableToChangeButton.png"),
              ),
            ),

            SizedBox(
              width: 30,
              height: 30,
              child: Image.asset("image/logosmastercard.png"),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  Text(
                    maskedNumber,

                    style: AppTextStyles.syleNorsalMedium15(
                      context,
                    ).copyWith(fontSize: 13.sp, letterSpacing: 1.2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
