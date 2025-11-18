import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class InscriptionCard extends StatefulWidget {
  final String image;
  final String title;
  final String location;
  final double rating;
  final String status;

  const InscriptionCard({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    required this.rating,
    required this.status,
  });

  @override
  State<InscriptionCard> createState() => _InscriptionCardState();
}

class _InscriptionCardState extends State<InscriptionCard> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.w),
      child: Container(
        width: 250.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.09),
              blurRadius: 10.r,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ======= الصورة مع المفضلة =======
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16.r),
                  ),
                  child: Container(
                    height: 120.h,
                    width: double.infinity,
                    color: Colors.white,
                    child: Image.asset(widget.image, fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: 10.h,
                  left: 10.w,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFav = !isFav;
                      });
                    },
                    child: AnimatedContainer(
                      duration: 300.ms,
                      width: 32.w,
                      height: 32.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5.r,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child:
                          Icon(
                                isFav ? Icons.favorite : Icons.favorite_border,
                                color: isFav
                                    ? Colors.pinkAccent
                                    : Colors.pinkAccent.withOpacity(0.6),
                                size: 20,
                              )
                              .animate(target: isFav ? 1 : 0)
                              .scale(
                                duration: 250.ms,
                                curve: Curves.easeOutBack,
                                begin: const Offset(0.8, 0.8),
                                end: const Offset(1.1, 1.1),
                              )
                              .then()
                              .scale(
                                begin: const Offset(1.1, 1.1),
                                end: const Offset(1, 1),
                              ),
                    ),
                  ),
                ),
              ],
            ),

            /// ======= تفاصيل النصوص =======
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// العنوان
                  Text(
                    widget.title,
                    textAlign: TextAlign.right,
                    style: GoogleFonts.tajawal(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4.h),

                  /// الموقع
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 16,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        widget.location,
                        style: GoogleFonts.tajawal(
                          fontSize: 13.sp,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),

                  /// التقييم + الحالة
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          SizedBox(width: 2.w),
                          Text(
                            "(${widget.rating})",
                            style: GoogleFonts.tajawal(
                              fontSize: 13.sp,
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Text(
                          widget.status,
                          textAlign: TextAlign.end,
                          style: GoogleFonts.tajawal(
                            fontSize: 12.sp,
                            color: Colors.grey[700],
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
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
