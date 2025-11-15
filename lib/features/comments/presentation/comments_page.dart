import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/core/utils/app_assets.dart';
import 'package:arch_team_power/features/comments/presentation/screens/widgets/build_write_messege.dart';
import 'package:arch_team_power/features/comments/presentation/screens/widgets/user_comment_widgets.dart';

import 'package:flutter/material.dart';

class CommentsPage extends StatelessWidget {
  CommentsPage({super.key});
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.background,
          title: const Text('التعليقات'),
          leading: const Icon(Icons.arrow_back),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            buildMessage(
              name: 'محمد أحمد',
              role: 'سائح',
              text:
                  'زرت معبد الكرنك وكان تجربة مذهلة! الأعمدة العملاقة والتفاصيل الدقيقة على النقوش شيء لا يوصف',
              imagePath: AppAssets.kTestImage6,
            ),
          ],
        ),
        bottomNavigationBar: buildWriteMessegeAndSend(),
      ),
    );
  }
}
