import 'package:arch_team_power/features/home/presentation/screens/widgets/inscription_library_list.dart';
import 'package:arch_team_power/features/home/presentation/screens/widgets/inscriptions_library_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InscriptionsLibraryWidget extends StatelessWidget {
  const InscriptionsLibraryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const InscriptionsLibraryHeader(),
        SizedBox(height: 10.h),

        const InscriptionLibraryList()
            .animate()
            .fade(duration: 700.ms)
            .slideY(begin: 0.3, duration: 700.ms),
      ],
    );
  }
}
