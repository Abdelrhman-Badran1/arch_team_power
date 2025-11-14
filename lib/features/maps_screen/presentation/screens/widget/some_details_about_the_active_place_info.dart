import 'package:arch_team_power/features/maps_screen/presentation/screens/widget/some_details_about_the_active_place_rate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SomeDetailsAboutTheActivePlaceInfo extends StatelessWidget {
  const SomeDetailsAboutTheActivePlaceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'مدائن صالح',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xFFD2B48C),
            fontFamily: 'Norsal',
          ),
        ),
        Row(
          spacing: 4,
          children: [
            Text(
              'السعوديه المدينة المنورة',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF8A8A8A),
                fontFamily: 'Norsal',
              ),
            ),
            Icon(
              CupertinoIcons.map_pin_ellipse,
              color: Color(0xFF8A8A8A),
              size: 15.sp,
            ),
          ],
        ),
        Text(
          'يبعد عن موقعك : 2.5 ساعة',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xFF8A8A8A),
            fontFamily: 'Norsal',
          ),
        ),
        SomeDetailsAboutTheActivePlaceRate(),
      ],
    );
  }
}
