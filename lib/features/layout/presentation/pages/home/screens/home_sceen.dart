import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/features/information/presentation/screens/widget/information_screen_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

import '../../../widget/home_screen_widget/famous_places_list.dart';
import '../../../widget/home_screen_widget/home_header.dart';
import '../../../widget/home_screen_widget/inscription_library_list.dart';
import '../../../widget/home_screen_widget/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeHeader(),

              /// ====== التصنيفات ======
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              //   child: const SectionTitle(title: "التصنيفات")
              //       .animate()
              //       .fade(duration: 600.ms)
              //       .slideY(begin: 0.3, duration: 600.ms),
              // ),
              // const CategoriesList()
              //     .animate()
              //     .fade(duration: 700.ms)
              //     .slideY(begin: 0.3, duration: 700.ms, curve: Curves.easeOut),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Image.asset(
                    "assets/image/befor_search.png",
                    fit: BoxFit.cover,
                    width: 400.w,
                  ),
                ),
              ),

              /// ====== أكثر الأماكن المشهورة ======
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: const SectionTitle(title: "أكثر الأماكن المشهورة")
                    .animate()
                    .fade(duration: 600.ms)
                    .slideY(begin: 0.3, duration: 600.ms),
              ),
              const FamousPlacesList()
                  .animate()
                  .fade(duration: 700.ms)
                  .slideY(begin: 0.3, duration: 700.ms),

              /// ====== مكتبة النقوش القديمة ======
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: GestureDetector(
                  onTap: () =>
                      GoRouter.of(context).push(AppRouter.kLibraryScreen),
                  child: Row(
                    children: [
                      const SectionTitle(title: "مكتبة النقوش القديمة")
                          .animate()
                          .fade(duration: 600.ms)
                          .slideY(begin: 0.3, duration: 600.ms),
                      Spacer(),
                      Text(
                        'عرض المزيد',
                        style: AppTextStyles.syleNorsalRegular10(
                          context,
                        ).copyWith(color: Color(0xFF8A8A8A)),
                      ),
                    ],
                  ),
                ),
              ),
              const InscriptionLibraryList()
                  .animate()
                  .fade(duration: 700.ms)
                  .slideY(begin: 0.3, duration: 700.ms),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: GestureDetector(
                  onTap: () =>
                      GoRouter.of(context).push(AppRouter.kInformationScreen),
                  child: Row(
                    children: [
                      Text(
                        'معلومة اثرية تهمك',
                        style: AppTextStyles.syleNorsalRegular14(
                          context,
                        ).copyWith(fontSize: 15.sp),
                      ),
                      Spacer(),
                      Text(
                        'عرض المزيد',
                        style: AppTextStyles.syleNorsalRegular10(
                          context,
                        ).copyWith(color: Color(0xFF8A8A8A)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) => InformationScreenItem(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
