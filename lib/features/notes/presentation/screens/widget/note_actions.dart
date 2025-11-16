import 'package:arch_team_power/features/notes/models/note_model.dart';
import 'package:arch_team_power/features/notes/presentation/screens/widget/note_actions_item.dart';
import 'package:flutter/material.dart';

class NoteActions extends StatelessWidget {
  const NoteActions({super.key, required this.onEdit, required this.onDelete});

  final Function(NoteModel note) onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        NotesActionItem(
          color: Color(0xFF4B5320),
          title: 'تعديل ',
          onTap: () => onEdit,
        ),

        const SizedBox(width: 8),
        NotesActionItem(
          color: Color(0xFFD2B48C),
          title: 'حذف ',
          onTap: () => onDelete,
        ),
      ],
    );
  }
}
