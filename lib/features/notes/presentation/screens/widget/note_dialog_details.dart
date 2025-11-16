import 'dart:io';

import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/utils/app_icons.dart';
import 'package:arch_team_power/features/notes/presentation/screens/widget/note_text_fiald.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NoteDialogDetails extends StatelessWidget {
  const NoteDialogDetails({
    super.key,
    required this.titleController,
    required this.imagePath,
    required this.onPickImage,
    required this.setDialogState,
  });

  final TextEditingController titleController;
  final String? imagePath;
  final Function(Function(void Function() p1) p1) onPickImage;
  final Function(void Function()) setDialogState;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('إضافة ملاحظة', style: AppTextStyles.syleNorsalMedium14(context)),
        SizedBox(height: 20.h),

        NotesTextField(
          hintText: 'العنوان',
          maxLines: 2,
          controller: titleController,
          width: 190.w,
          height: 40.h,
        ),

        SizedBox(height: 10.h),
        NotesTextField(
          hintText: 'الوصف',
          maxLines: 7,
          controller: titleController,
          width: 190.w,
          height: 80.h,
        ),

        const SizedBox(height: 10),

        if (imagePath != null) ...[
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.file(
              File(imagePath!),
              height: 80.h,
              width: 80.w,
              fit: BoxFit.cover,
            ),
          ),
        ],
        SizedBox(height: 20.h),
        GestureDetector(
          onTap: () => onPickImage(setDialogState),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5.w,
            children: [
              SvgPicture.asset(AppIcons.kProiconsPhotoIcon),
              Text(
                'إضافة صورة',
                style: AppTextStyles.syleNorsalRegular12(context),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
