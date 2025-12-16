import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/fav_model/fav_model.dart';
import 'fav_item_card.dart';

class FavList extends StatefulWidget {
  const FavList({super.key});

  @override
  State<FavList> createState() => _FavListState();
}

class _FavListState extends State<FavList> {
  List<FavModel> items = [
    FavModel(
      id: 1,
      title: "مدائن صالح",
      description: "المواقع التاريخيه والآثار القديمه",
      rate: 4.5,
      reviews: 200,
      image: "assets/image/asar.png",
    ),
    FavModel(
      id: 2,
      title: "العلا",
      description: "المواقع التاريخيه والآثار القديمه",
      rate: 4.5,
      reviews: 200,
      image: "assets/image/saleh.png",
    ),
    FavModel(
      id: 3,
      title: "قلعة تبوك",
      description: "المواقع التاريخيه والآثار القديمه",
      rate: 4.5,
      reviews: 200,
      image: "assets/image/saleh.png",
    ),
  ];

  void removeItem(int index) {
    setState(() => items.removeAt(index));

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "تم حذف العنصر من المفضلة",
          style: AppTextStyles.syleNorsalMedium12(context),
        ),
        backgroundColor: AppColors.primary,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.all(20),
        duration: const Duration(milliseconds: 900),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(bottom: 20.h),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        return Dismissible(
          key: ValueKey(item.id),
          direction: DismissDirection.endToStart,

          /// 🔥 خلفية السحب
          background: Container(
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(26),
            ),
            margin: EdgeInsets.only(bottom: 15.w),
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 25.w),
            child: Icon(
              Icons.delete,
              color: AppColors.unSelectItemSelectedColor,
              size: 30.w,
            ),
          ),

          /// 🔥 عند السحب
          onDismissed: (_) => removeItem(index),

          child: Padding(
            padding: EdgeInsets.only(bottom: 15.w),

            /// 🔥 Animation لكل كارد عند ظهوره
            child: FavItemCard(
              model: item,
              onRemove: () => removeItem(index),
            ).animate().fadeIn(duration: 350.ms).slideX(begin: 0.1, end: 0),
          ),
        );
      },
    );
  }
}
