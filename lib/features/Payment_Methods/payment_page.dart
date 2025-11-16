import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/features/Payment_Methods/widgets/card_payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: Text(
            'وسائل الدفع',
            style: AppTextStyles.syleNorsalMedium15(
              context,
            ).copyWith(fontSize: 17.sp, letterSpacing: 1),
          ),
          backgroundColor: AppColors.background,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              Text(
                'اختر الطريقة التي تفضلها لاستكمال طريقة الدفع',
                style: AppTextStyles.syleNorsalMedium15(
                  context,
                ).copyWith(fontSize: 13.sp, letterSpacing: 1),
              ),

              const SizedBox(height: 30),

            
              CardPaymentButton(
                width: width,
                onTap: () {
                 
                  debugPrint('MasterCard button tapped');
                },
                onIconTap: () {
                
                  debugPrint('MasterCard icon tapped');
                },
                bankImageUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/0/04/Mastercard-logo.png',
                lastDigits: '123',
                label: 'MasterCard',
              ),

              const SizedBox(height: 20),

              CardPaymentButton(
                width: width,
                onTap: () {
                  debugPrint('Visa button tapped');
                },
                onIconTap: () {
                  debugPrint('Visa icon tapped');
                },
                bankImageUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/4/41/Visa_Logo.png',
                lastDigits: '789',
                label: 'Visa',
              ),
              SizedBox(height: 90),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    debugPrint('Confirm pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'تأكيد',
                    style: AppTextStyles.syleNorsalMedium15(context).copyWith(
                      fontSize: 11.sp,
                      letterSpacing: 1,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
