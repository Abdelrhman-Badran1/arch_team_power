import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InscriptionItemImage extends StatelessWidget {
  const InscriptionItemImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 70.h,
        width: 175.w,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }
}
