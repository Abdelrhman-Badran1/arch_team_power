import 'package:arch_team_power/core/widgets/custom_app_bar.dart';
import 'package:arch_team_power/features/notes/models/note_model.dart';
import 'package:arch_team_power/features/notes/presentation/screens/widget/empty_notes_widget.dart';
import 'package:arch_team_power/features/notes/presentation/screens/widget/notes_list_view.dart';
import 'package:arch_team_power/features/notes/presentation/screens/widget/send_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

class NotesScreenBody extends StatefulWidget {
  const NotesScreenBody({super.key});

  @override
  State<NotesScreenBody> createState() => _NotesScreenBodyState();
}

class _NotesScreenBodyState extends State<NotesScreenBody> {
  late Box<NoteModel> notesBox;

  @override
  void initState() {
    super.initState();
    notesBox = Hive.box<NoteModel>('notes');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 35.h),
        const CustomAppBar(title: 'الملاحظات'),
        SizedBox(height: 35.h),
        Expanded(
          child: ValueListenableBuilder(
            valueListenable: notesBox.listenable(),
            builder: (context, Box<NoteModel> box, widget) {
              if (box.isEmpty) {
                return const EmptyNotesWidget();
              }

              return NotesListView(box: box);
            },
          ),
        ),

        SendSectionWidget(notesBox: notesBox),
        SizedBox(height: 20.h),
      ],
    );
  }
}
