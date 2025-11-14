import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

Widget buildMessage({
  required String name,
  required String role,
  required String text,
  required String imagePath,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 16.0),
    child: Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),

            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // الصورة والاسم والصفة
          Row(
            children: [
              CircleAvatar(radius: 25, backgroundImage: AssetImage(imagePath)),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    role,
                    style: TextStyle(color: Colors.grey[600], fontSize: 14),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 10),

          // الكومنت
          Text(
            text,
            style: const TextStyle(
              fontSize: 15,
              color: AppColors.textSecondary,
            ),
          ),

          const SizedBox(height: 10),

          // الصورة
          const SizedBox(height: 10),

          // اللايكات
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      imagePath,
                      width: 116,
                      height: 88,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 9,
                    child: Text(
                      "1/4",
                      style: TextStyle(color: AppColors.white, fontSize: 20),
                    ),
                  ),

                  Positioned(
                    bottom: 8,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(4, (index) {
                        bool isActive = index == 0; // خلي الصورة الحالية رقم 0
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Container(
                            width: isActive ? 12 : 6,
                            height: isActive ? 3 : 6,
                            decoration: BoxDecoration(
                              color: isActive
                                  ? AppColors.white
                                  : Colors.grey[400],
                              borderRadius: isActive
                                  ? BorderRadius.circular(2)
                                  : BorderRadius.circular(50),
                            ),
                          ),
                        );
                      }), //
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 45, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [
                    Image.asset('image/like2.png', width: 18, height: 18),
                    const SizedBox(width: 4),
                    const Text('200'),
                    const SizedBox(width: 16),
                    Image.asset('image/Dislike.png', width: 18, height: 18),
                    const SizedBox(width: 4),
                    const Text('30'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
