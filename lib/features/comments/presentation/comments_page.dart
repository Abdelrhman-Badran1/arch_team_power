import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/core/utils/app_assets.dart';
import 'package:arch_team_power/core/widgets/custom_app_bar.dart';
import 'package:arch_team_power/features/comments/presentation/screens/widgets/build_write_messege.dart';
import 'package:arch_team_power/features/comments/presentation/screens/widgets/user_comment_widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentsPage extends StatelessWidget {
  CommentsPage({super.key});
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.background,

          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.86.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 34.h),
                  CustomAppBar(title: 'التعليقات'),
                  SizedBox(height: 34.h),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(16.0),
                    children: [
                      buildMessage(
                        context,
                        name: 'محمد أحمد',
                        role: 'سائح',
                        text:
                            'زرت معبد الكرنك وكان تجربة مذهلة! الأعمدة العملاقة والتفاصيل الدقيقة على النقوش شيء لا يوصف',
                        imagePath: AppAssets.kTestImage6,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: buildWriteMessegeAndSend(context),
        ),
      ),
    );
  }
}
