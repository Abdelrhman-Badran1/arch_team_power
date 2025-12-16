import 'package:arch_team_power/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'inscription_card.dart';

class InscriptionLibraryList extends StatelessWidget {
  const InscriptionLibraryList({super.key});

  @override
  Widget build(BuildContext context) {
    final inscriptions = [
      {
        'image': AppAssets.kCartImage,
        'title': 'نقش أثري قديم',
        'location': 'السعودية، حائل',
        'rating': 4.5,
        'status': 'الحالة غير واضحة',
      },
      {
        'image': AppAssets.kCartImage,
        'title': 'نقش نبطي',
        'location': 'العلا، المملكة',
        'rating': 4.3,
        'status': 'محفوظ بشكل جيد',
      },
      {
        'image': AppAssets.kCartImage,
        'title': 'نقش عربي قديم',
        'location': 'تبوك، السعودية',
        'rating': 4.8,
        'status': 'بحالة ممتازة',
      },
    ];

    return SizedBox(
      height: 195.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        itemCount: inscriptions.length,
        itemBuilder: (context, index) {
          final item = inscriptions[index];
          return InscriptionCard(
                image: item['image'] as String,
                title: item['title'] as String,
                location: item['location'] as String,
                rating: item['rating'] as double,
                status: item['status'] as String,
              )
              .animate()
              .fadeIn(duration: 600.ms, delay: (index * 200).ms)
              .slideX(begin: 0.2, duration: 600.ms, curve: Curves.easeOut);
        },
      ),
    );
  }
}
