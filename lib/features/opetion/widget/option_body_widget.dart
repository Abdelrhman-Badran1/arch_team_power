import 'package:arch_team_power/core/images/app_images.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/Functions/spaceing/spaceing.dart';
import '../../../core/widgets/custom_app_bar_widget.dart'
    show CustomAppBarWidget;

class OptionBodyWidget extends StatelessWidget {
  const OptionBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 27.72.h, left: 23.w, right: 4.w),
        child: Column(
          children: [
            CustomAppBarWidget(title: "! ابدأ رحلتك معنا", onPressed: () {}),
            verticalSpace(40),
            Center(
              child: Image.asset(
                AppImages.opetionImage,
                height: 118.65.h,
                width: 145.5.w,
                fit: BoxFit.fill,
              ),
            ),
            verticalSpace(40),
            Text(
              "لإثراء تجربتك، اختر طريقة الاستخدام التي تناسبك",
              style: AppTextStyles.styleFontNorsalMedium13CGray(context),
            ),
            verticalSpace(55),
            CustomButtonWidget(text: "ايقونه سائح", onTap: () {}),
            verticalSpace(17),
            CustomButtonWidget(
              backgroundColor: Color(0xFFFFFFFF),
              text: "ايقونه الباحث والمتخصص",
              textColor: Color(0xFF8A8A8A),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
