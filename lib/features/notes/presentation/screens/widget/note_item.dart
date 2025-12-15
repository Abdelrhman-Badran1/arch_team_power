import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/features/notes/models/note_model.dart';
import 'package:arch_team_power/features/notes/presentation/screens/widget/note_actions.dart';
import 'package:arch_team_power/features/notes/presentation/screens/widget/note_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.note,
    required this.index,
    required this.onEdit,
    required this.onDelete,
  });

  final NoteModel note;
  final int index;
  final Function(NoteModel) onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Container(
        width: 298.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          note.title,
                          style: AppTextStyles.syleNorsalMedium13(
                            context,
                          ).copyWith(color: const Color(0xFF282828)),
                        ),
                        if ((note.details ?? "").isNotEmpty) ...[
                          SizedBox(height: 6.h),
                          Text(
                            note.details!,
                            style: AppTextStyles.syleNorsalRegular12(
                              context,
                            ).copyWith(color: const Color(0xFF8A8A8A)),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ],
                    ),
                  ),
                  if (note.imagePath != null) ...[
                    const SizedBox(width: 8),
                    NoteImage(note: note),
                  ],
                ],
              ),

              const SizedBox(height: 10),

              NoteActions(onEdit: onEdit, onDelete: onDelete),
            ],
          ),
        ),
      ),
    );
  }
}
