import 'package:arch_team_power/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/models/category_model.dart';
import '../../categories/category_item.dart';

// class CategoriesList extends StatelessWidget {
//   const CategoriesList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final categories = [
//       CategoryModel(title: 'فنادق', image: AppAssets.kNoqoshImage),
//       CategoryModel(title: 'مطاعم', image: AppAssets.kNoqoshImage),
//       CategoryModel(title: 'متاحف', image: AppAssets.kMusuemImage),
//       CategoryModel(title: 'طبيعة', image: AppAssets.kMusuemImage),
//       CategoryModel(title: 'تراث', image: AppAssets.kNoqoshImage),
//     ];

//     return SizedBox(
//       height: 110.h,
//       child: ListView.separated(
//         scrollDirection: Axis.horizontal,
//         padding: EdgeInsets.symmetric(horizontal: 20.w),
//         itemCount: categories.length,
//         separatorBuilder: (context, index) => SizedBox(width: 15.w),
//         itemBuilder: (context, index) {
//           return CategoryItem(category: categories[index], onTap: () {});
//         },
//       ),
//     );
//   }
// }
