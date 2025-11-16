import 'dart:io';

import 'package:arch_team_power/features/notes/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoteImage extends StatelessWidget {
  const NoteImage({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: SizedBox(
            height: 80.h,
            width: 80.w,
            child: Image.file(
              File(note.imagePath!),
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Center(child: Icon(Icons.broken_image)),
            ),
          ),
        ),
      ],
    );
  }
}
