import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;

  const ActionButton({
    required this.title,
    required this.backgroundColor,
    required this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 84,
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey), // لو عايز البوردر
      ),
      child: Center(
        child: Text(title, style: TextStyle(color: textColor)),
      ),
    );
  }
}
