import 'dart:convert';

import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  final String baseUrl = "https://archtech.test-trifhi.com/api/";

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final response = await dio.get('$baseUrl$endPoint');
    return _handleResponse(response.data);
  }

  Future<Map<String, dynamic>> post({
    required String endPoint,
    dynamic data,
    bool isMultipart = false,
  }) async {
    final response = await dio.post('$baseUrl$endPoint', data: data);
    return _handleResponse(response.data);
  }

  Map<String, dynamic> _handleResponse(dynamic data) {
    if (data is Map<String, dynamic>) {
      return data;
    }

    if (data is String) {
      if (data.trim().startsWith('<!DOCTYPE html')) {
        throw Exception(
          'Server returned HTML instead of JSON (check endpoint or auth)',
        );
      }
      return jsonDecode(data) as Map<String, dynamic>;
    }

    throw Exception('Unexpected response type: ${data.runtimeType}');
  }
}
