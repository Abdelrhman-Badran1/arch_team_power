import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/features/details_screen/data/details_actions.dart';
import 'package:arch_team_power/features/details_screen/widget/details_screen_body_info_title_and_category_name.dart';
import 'package:arch_team_power/features/details_screen/widget/similar_places_near_you_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InscriptionDetailsScreenBodyInfo extends StatelessWidget {
  const InscriptionDetailsScreenBodyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailsScreenBodyInfoTitleAndCategoryName(),
          SizedBox(height: 20.h),
          SizedBox(
            height: 85.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                actions.length,
                (index) => actions[index],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Text(
                'الحالة :',
                style: AppTextStyles.syleNorsalRegular14(
                  context,
                ).copyWith(color: Color(0xFF282828)),
              ),
              Text(
                'غير واضح',
                style: AppTextStyles.syleNorsalRegular12(
                  context,
                ).copyWith(color: Color(0xFF8A8A8A)),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Text(
                'تاريخ العثور على النقش',
                style: AppTextStyles.syleNorsalRegular14(
                  context,
                ).copyWith(color: Color(0xFF282828)),
              ),
              Text(
                '20/3/1995',
                style: AppTextStyles.syleNorsalRegular12(
                  context,
                ).copyWith(color: Color(0xFF8A8A8A)),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Text(
            'تفاصيل العثور علي النقش :',
            style: AppTextStyles.syleNorsalRegular14(
              context,
            ).copyWith(color: Color(0xFF282828)),
          ),
          SizedBox(height: 10.h),
          Text(
            'اكتشفت البعثة المصرية برئاسة الدكتور زاهي حواس هذ ا النقش في مقبرة رمسيس الثالث الموجوده داخل المدينة المفقوده داخل الرمال ، والتي يعود تاريخها إلى عهد الملك أمنحتب الثالث، واستمر استخدام المدينة من قبل توت عنخ آمون، أي منذ 3000 عام.',
            style: AppTextStyles.syleNorsalRegular12(
              context,
            ).copyWith(color: Color(0xFF8A8A8A)),
          ),
          SizedBox(height: 20.h),
          Text(
            'ترجمة النقش',
            style: AppTextStyles.syleNorsalRegular14(
              context,
            ).copyWith(color: Color(0xFF282828)),
          ),
          SizedBox(height: 10.h),
          Text(
            '(السنة التاسعة الشهر الرابع قسندقس) وهو بالشهر المصرى الثامن عشر من الشهر الثانى من فصل الشتاء، فى عهد الملك الشاب الذى ظهر ملكًا على عرش والده، سيد تاج الصل، ومن شهرته عظيمة، ومن ثبت مصر عندما حررها، ومن قلبه محسن نحو الآلهة، ومن يقف فى وجه أعدائه، ومن يجعل حياة الناس حرة،.',
            style: AppTextStyles.syleNorsalRegular12(
              context,
            ).copyWith(color: Color(0xFF8A8A8A)),
          ),
          SizedBox(height: 20.h),
          SimilarPlacesNearYouListView(),
        ],
      ),
    );
  }
}
