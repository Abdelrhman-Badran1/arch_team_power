import 'dart:io';
import 'package:arch_team_power/core/services/api_service.dart';
import 'package:arch_team_power/features/comments/data/model/addCommentModel/post/post.comment.dart';
import 'package:dio/dio.dart';

abstract class CommentRemoteDataSource {
  CommentRemoteDataSource(ApiService apiService);

  Future<Post> postComment({
    required String description,
    File? image,
    required int ruinid,
  });
}

class CommentRemoteDataSourceImpl implements CommentRemoteDataSource {
  final ApiService apiService;

  CommentRemoteDataSourceImpl(this.apiService);

  Future<Post> postComment({
    required String description,
    File? image,
    required int ruinid,
  }) async {
    try {
      final Map<String, dynamic> dataFields = {
        'description': description,
        'ruin_id': ruinid,
      };

      if (image != null) {
        dataFields['image'] = await MultipartFile.fromFile(image.path);
      }

      final commentFormData = FormData.fromMap(dataFields);

      final responseData = await apiService.post(
        endPoint: 'comments',
        data: commentFormData,

        isMultipart: true,
      );

      return Post.fromJson(responseData);
    } on DioException catch (e) {
      print(
        'DioException: ${e.response?.statusCode} - ${e.response?.statusMessage}',
      );
      print('Response data: ${e.response?.data}');
      if (e.type == DioExceptionType.connectionError) {
        throw Exception('Connection error. Please check your internet.');
      } else if (e.type == DioExceptionType.sendTimeout) {
        throw Exception('Send timeout. Server took too long to respond.');
      } else if (e.type == DioExceptionType.receiveTimeout) {
        throw Exception('Receive timeout. Server took too long to respond.');
      } else if (e.type == DioExceptionType.badResponse) {
        throw Exception(
          'Server error: ${e.response?.statusCode} ${e.response?.statusMessage}',
        );
      } else if (e.type == DioExceptionType.cancel) {
        throw Exception('Request was cancelled');
      } else {
        throw Exception('Unexpected error: ${e.message}');
      }
    } catch (e) {
      throw Exception('Failed to post comment: $e');
    }
  }
}
