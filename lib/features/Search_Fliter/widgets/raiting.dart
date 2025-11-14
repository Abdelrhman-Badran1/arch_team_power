import 'package:flutter/material.dart';

Widget buildRatingTile(String label, int stars) {
  return RadioListTile<int>(
    value: 1,
    groupValue: 0,
    onChanged: null,
    controlAffinity:
        ListTileControlAffinity.trailing, // دي تخلي النقطة على الشمال
    activeColor: Colors.yellow, // ده يخلي النقطة نفسها لونها أصفر
    title: Row(
      children: [
        Row(
          children: List.generate(
            stars,
            (index) => Image.asset(
              '/image/rainting.png',
              width: 20, //
              height: 20,
            ),
          ),
        ),
        const SizedBox(width: 15),
        Text(
          label,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 8),
      ],
    ),
  );
}
