import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/app_colors.dart';
import '../../data/fav_model/fav_model.dart';

class FavItemCard extends StatefulWidget {
  final FavModel model;
  final VoidCallback onRemove;

  const FavItemCard({
    super.key,
    required this.model,
    required this.onRemove,
  });

  @override
  State<FavItemCard> createState() => _FavItemCardState();
}

class _FavItemCardState extends State<FavItemCard> {
  bool isFavTapped = false;

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [
        SlideEffect(
          begin: const Offset(1, 0),
          end: const Offset(0, 0),
          duration: 350.ms,
          curve: Curves.easeOutBack,
        ),
        FadeEffect(duration: 300.ms),
      ],
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          textDirection: TextDirection.rtl,
          children: [

            /// الصورة + القلب (على الصورة)
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    widget.model.image,
                    width: 85.w,
                    height: 85.h,
                    fit: BoxFit.cover,
                  ),
                ),

                /// القلب فوق الصورة (كما التصميم)
                Positioned(
                  top: 6.w,
                  left: 50.w,
                  child: GestureDetector(
                    onTap: () async {
                      setState(() => isFavTapped = true);
                      await Future.delayed(700.ms);
                      widget.onRemove();
                    },
                    child: Animate(
                      target: isFavTapped ? 1 : 0,
                      effects: [
                        ScaleEffect(
                          begin: const Offset(1, 1),
                          end: const Offset(1.4, 1.4),
                          duration: 350.ms,
                          curve: Curves.elasticOut,
                        ),

                        RotateEffect(
                          begin: 0,
                          end: 0.10,
                          duration: 150.ms,
                        ),

                        MoveEffect(
                          begin: const Offset(0, 0),
                          end: const Offset(-0.04, 0),
                          duration: 70.ms,
                        ),
                        MoveEffect(
                          begin: const Offset(-0.04, 0),
                          end: const Offset(0.04, 0),
                          duration: 70.ms,
                        ),
                        MoveEffect(
                          begin: const Offset(0.04, 0),
                          end: const Offset(0, 0),
                          duration: 70.ms,
                        ),
                      ],
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.favorite,
                          color: AppColors.secondary,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(width: 12),

            /// النصوص
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.model.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    widget.model.description,
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 13,
                    ),
                  ),

                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        widget.model.rate.toString(),
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                       SizedBox(width: 4.w),
                       SizedBox(width: 6.w),
                      Text(
                        "(${widget.model.reviews} تقييم)",
                        style:  TextStyle(
                          color: Color(0xffD4A06A),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
