import 'package:arch_team_power/core/utils/app_icons.dart';
import 'package:arch_team_power/features/notes/presentation/screens/widget/note_text_fiald.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SendSection extends StatelessWidget {
  const SendSection({
    super.key,
    required this.controller,
    required this.detailsController,
    required this.imagePath,
    required this.onSend,
    required this.onTap,
  });
  final TextEditingController controller;
  final TextEditingController detailsController;
  final String? imagePath;
  final VoidCallback onSend;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10.w),
        NotesTextField(
          readOnly: true,
          hintText: 'أضف ملاحظة جديدة',
          suffixIcon: GestureDetector(
            // onTap: onPikedImage,
            child: SvgPicture.asset(AppIcons.kProiconsPhotoIcon),
          ),
          onTap: onTap,
          controller: TextEditingController(
            text: controller.text.isNotEmpty
                ? controller.text
                : (detailsController.text.isNotEmpty
                      ? detailsController.text
                      : ''),
          ),
        ),
        const SizedBox(width: 8),
        GestureDetector(
          onTap: onSend,
          child: Container(
            height: 42.h,
            width: 42.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.white,
            ),
            child: Center(
              child: SvgPicture.asset(
                AppIcons.kSendIcon,
                height: 17.h,
                width: 17.w,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
