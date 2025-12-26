import 'dart:io';

import 'package:arch_team_power/core/errors/failure.dart';
import 'package:arch_team_power/features/comments/data/model/addCommentModel/post/post.comment.dart';
import 'package:dartz/dartz.dart';

abstract class CommentRepo {
  Future<Either<Failure, Post>> addComment({
    required String description,
    File? image,
    required int ruinid,
  });
}
