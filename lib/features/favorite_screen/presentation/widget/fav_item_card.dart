import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/app_colors.dart';
import '../../data/fav_model/fav_model.dart';

class FavItemCard extends StatefulWidget {
  final FavModel model;
  final VoidCallback onRemove;

  const FavItemCard({super.key, required this.model, required this.onRemove});

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

                        RotateEffect(begin: 0, end: 0.10, duration: 150.ms),

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
                    style: AppTextStyles.syleNorsalRegular14(context),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    widget.model.description,
                    style: AppTextStyles.syleNorsalRegular10(
                      context,
                    ).copyWith(color: Color(0xFF8A8A8A)),
                  ),

                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        widget.model.rate.toString(),
                        style: AppTextStyles.syleNorsalMedium12(context),
                      ),
                      SizedBox(width: 4.w),
                      SizedBox(width: 6.w),
                      Text(
                        "(${widget.model.reviews} تقييم)",
                        style: AppTextStyles.syleNorsalRegular10(
                          context,
                        ).copyWith(color: Color(0xFFDB9448)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
