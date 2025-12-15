import 'package:arch_team_power/features/notes/presentation/screens/manger/cubits/notes_cubit/notes_cubit.dart';
import 'package:arch_team_power/features/notes/presentation/screens/widget/notes_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffF6F6F6),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.86.w),
            child: const NotesScreenBody(),
          ),
        ),
      ),
    );
  }
}
