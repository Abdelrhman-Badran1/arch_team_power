import 'package:dio/dio.dart';

import 'dart:convert';

class ApiService {
  final Dio dio;
  final String baseUrl = "https://archtech.test-trifhi.com/api/";

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({
    required String endPoint,
    String? token,
  }) async {
    final response = await dio.get(
      '$baseUrl$endPoint',
      options: token != null
          ? Options(headers: {'Authorization': 'Bearer $token'})
          : null,
    );

    return _handleResponse(response.data);
  }

  Future<Map<String, dynamic>> post({
    required String endPoint,
    Map<String, dynamic>? data,
    Options? options,
  }) async {
    final response = await dio.post(
      '$baseUrl$endPoint',
      data: data,
      options: options,
    );
    return _handleResponse(response.data);
  }

  Map<String, dynamic> _handleResponse(dynamic data) {
    if (data is Map<String, dynamic>) {
      return data;
    } else if (data is String) {
      return jsonDecode(data) as Map<String, dynamic>;
    } else {
      throw Exception('Unexpected response type: ${data.runtimeType}');
    }
  }
}
