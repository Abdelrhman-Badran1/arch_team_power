import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/widgets/custom_app_bar.dart';
import 'package:arch_team_power/features/notes/models/note_model.dart';
import 'package:arch_team_power/features/notes/presentation/screens/widget/note_dialog.dart';
import 'package:arch_team_power/features/notes/presentation/screens/widget/note_item.dart';
import 'package:arch_team_power/features/notes/presentation/screens/widget/send_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';

class NotesScreenBody extends StatefulWidget {
  const NotesScreenBody({super.key});

  @override
  State<NotesScreenBody> createState() => _NotesScreenBodyState();
}

class _NotesScreenBodyState extends State<NotesScreenBody> {
  late Box<NoteModel> notesBox;

  final TextEditingController titleController = TextEditingController();
  final TextEditingController detailsController = TextEditingController();
  String? imagePath;

  @override
  void initState() {
    super.initState();
    notesBox = Hive.box<NoteModel>('notes');
  }

  Future<void> pickImage(Function(void Function()) setDialogState) async {
    final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setDialogState(() => imagePath = picked.path);
    }
  }

  void saveTemp() {
    if (titleController.text.trim().isEmpty &&
        detailsController.text.trim().isEmpty)
      return;

    Navigator.pop(context);
    setState(() {});
  }

  void saveFinalNote() {
    if (titleController.text.trim().isEmpty &&
        detailsController.text.trim().isEmpty)
      return;

    notesBox.add(
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
    return Column(
      children: [
        SizedBox(height: 35.h),
        CustomAppBar(title: 'الملاحظات'),
        SizedBox(height: 35.h),
        Expanded(
          child: ValueListenableBuilder(
            valueListenable: notesBox.listenable(),
            builder: (context, Box<NoteModel> box, widget) {
              if (box.isEmpty) {
                return Center(
                  child: Text(
                    "لا يوجد ملاحظات",
                    style: AppTextStyles.syleNorsalMedium15(context),
                  ),
                );
              }

              return ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: box.length,
                itemBuilder: (context, index) => NoteItem(
                  note: box.getAt(index)!,
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
            },
          ),
        ),

        SendSection(
          controller: titleController,
          detailsController: detailsController,
          imagePath: imagePath,
          onSend: saveFinalNote,
          onTap: openNoteDialog,
          // onPikedImage: pickImage,
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
