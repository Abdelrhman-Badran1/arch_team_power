import 'package:arch_team_power/features/notes/presentation/screens/widget/note_actions_item.dart';
import 'package:arch_team_power/features/notes/presentation/screens/widget/note_dialog_details.dart';
import 'package:flutter/material.dart';

class NoteDialog extends StatelessWidget {
  const NoteDialog({
    super.key,
    required this.titleController,
    required this.detailsController,
    required this.imagePath,
    required this.onPickImage,
    required this.onSave,
    required this.onImageDelete,
  });
  final TextEditingController titleController;
  final TextEditingController detailsController;
  final String? imagePath;
  final Function(Function(void Function())) onPickImage;
  final VoidCallback onSave;
  final VoidCallback onImageDelete;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setDialogState) => AlertDialog(
        backgroundColor: const Color(0xffF6F6F6),

        contentPadding: const EdgeInsets.all(16),
        content: NoteDialogDetails(
          setDialogState: setDialogState,
          titleController: titleController,
          imagePath: imagePath,
          onPickImage: onPickImage,
        ),

        actions: [
          NotesActionItem(
            title: 'تأكيد',
            color: Color(0xFF4B5320),
            onTap: onSave,
          ),
          NotesActionItem(
            title: 'إلغاء',
            color: Color(0xFFD2B48C),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
