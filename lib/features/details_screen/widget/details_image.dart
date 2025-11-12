import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsImage extends StatelessWidget {
  const DetailsImage({super.key, required this.image});
  final ImageProvider<Object> image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 232.h,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: image, fit: BoxFit.fill),
      ),
    );
  }
}
