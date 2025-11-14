import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SomeDetailsAboutTheActivePlaceRate extends StatefulWidget {
  const SomeDetailsAboutTheActivePlaceRate({super.key});

  @override
  State<SomeDetailsAboutTheActivePlaceRate> createState() =>
      _SomeDetailsAboutTheActivePlaceRateState();
}

class _SomeDetailsAboutTheActivePlaceRateState
    extends State<SomeDetailsAboutTheActivePlaceRate> {
  double rating = 1;
  int starCount = 5;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      children: [
        Text(
          '(4.5)',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xFF8A8A8A),
            fontFamily: 'Norsal',
          ),
        ),
        StarRating(
          size: 16.sp,
          rating: rating,
          color: Color(0xffFFCE31),
          borderColor: Color(0xffD0D0D0),
          allowHalfRating: true,
          starCount: starCount,
          onRatingChanged: (rating) => setState(() {
            this.rating = rating;
          }),
        ),
      ],
    );
  }
}
