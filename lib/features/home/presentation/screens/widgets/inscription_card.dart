import 'package:arch_team_power/core/widgets/custom_fav_button.dart';
import 'package:arch_team_power/features/home/presentation/screens/widgets/inscription_item_image.dart';
import 'package:arch_team_power/features/home/presentation/screens/widgets/inscription_item_lication_and_status.dart';
import 'package:arch_team_power/features/home/presentation/screens/widgets/inscription_item_title_and_rate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InscriptionItem extends StatelessWidget {
  const InscriptionItem({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    required this.rating,
    required this.status,
  });
  final String image;
  final String title;
  final String location;
  final double rating;
  final String status;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 190.w,
        height: 114.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.09),
              blurRadius: 10.r,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 8),

                InscriptionItemImage(image: image),
                const SizedBox(height: 5),
                InscriptionItemTitleAndRate(title: title, rating: rating),
                InscriptionItemLicationAndStatus(
                  location: location,
                  status: status,
                ),
              ],
            ),
            Positioned(top: 10.h, left: 10.w, child: const CustomFavButton()),
          ],
        ),
      ),
    );
  }
}
