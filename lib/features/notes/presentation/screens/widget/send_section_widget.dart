import 'package:arch_team_power/features/notes/models/note_model.dart';
import 'package:arch_team_power/features/notes/presentation/screens/widget/note_dialog.dart';
import 'package:arch_team_power/features/notes/presentation/screens/widget/send_section.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';

class SendSectionWidget extends StatefulWidget {
  const SendSectionWidget({super.key, required this.notesBox});
  final Box<NoteModel> notesBox;
  @override
  State<SendSectionWidget> createState() => _SendSectionWidgetState();
}

class _SendSectionWidgetState extends State<SendSectionWidget> {
  final TextEditingController titleController = TextEditingController();

  final TextEditingController detailsController = TextEditingController();

  String? imagePath;
  Future<void> pickImage(Function(void Function()) setDialogState) async {
    final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setDialogState(() => imagePath = picked.path);
    }
  }

  void saveTemp() {
    if (titleController.text.trim().isEmpty &&
        detailsController.text.trim().isEmpty) {
      return;
    }

    Navigator.pop(context);
    setState(() {});
  }

  void saveFinalNote() {
    if (titleController.text.trim().isEmpty &&
        detailsController.text.trim().isEmpty) {
      return;
    }

    widget.notesBox.add(
      NoteModel(
        title: titleController.text.trim(),
        details: detailsController.text.trim(),
        imagePath: imagePath,
      ),
    );

    titleController.clear();
    detailsController.clear();
    imagePath = null;
    setState(() {});
  }

  void openNoteDialog() {
    showDialog(
      context: context,
      builder: (context) => NoteDialog(
        titleController: titleController,
        detailsController: detailsController,
        imagePath: imagePath,
        onPickImage: pickImage,
        onSave: saveTemp,
        onImageDelete: () => setState(() => imagePath = null),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SendSection(
      controller: titleController,
      detailsController: detailsController,
      imagePath: imagePath,
      onSend: saveFinalNote,
      onTap: openNoteDialog,
    );
  }
}
