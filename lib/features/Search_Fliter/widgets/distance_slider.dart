import 'package:flutter/material.dart';

class DistanceSlider extends StatelessWidget {
  const DistanceSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'المسافة',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        RangeSlider(
          values: const RangeValues(10, 1000),
          min: 10,
          max: 3000,
          divisions: 299,
          activeColor: const Color(0xFFD2B48C),
          inactiveColor: Colors.grey,
          labels: const RangeLabels('10', '1000'),
          onChanged: (RangeValues values) {},
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('4 ك', style: TextStyle(fontSize: 20)),
            Text('10 ك', style: TextStyle(fontSize: 20)),
            Text('1000 ك', style: TextStyle(fontSize: 20)),
            Text('3000 ك', style: TextStyle(fontSize: 20)),
          ],
        ),
      ],
    );
  }
}
