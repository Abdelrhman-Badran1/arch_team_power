import 'package:arch_team_power/features/notes/models/note_model.dart';
import 'package:arch_team_power/features/notes/presentation/screens/widget/note_dialog.dart';
import 'package:arch_team_power/features/notes/presentation/screens/widget/note_item.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key, required this.box});
  final Box<NoteModel> box;

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
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

  late Box<NoteModel> notesBox;
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
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: widget.box.length,
      itemBuilder: (context, index) => NoteItem(
        note: widget.box.getAt(index)!,
        index: index,
        onEdit: (note) {
          titleController.text = note.title;
          detailsController.text = note.details ?? "";
          imagePath = note.imagePath;
          openNoteDialog();
        },
        onDelete: () => notesBox.deleteAt(index),
      ),
    );
  }
}
