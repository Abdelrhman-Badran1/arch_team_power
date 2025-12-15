import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'comments_state.dart';

class CommentsCubit extends Cubit<CommentsState> {
  CommentsCubit() : super(CommentsInitial());
}
