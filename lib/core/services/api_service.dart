import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final baseUrl = "https://archtech.test-trifhi.com/api/";

  ApiService(this.dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$baseUrl$endPoint');
    return response.data;
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
    return response.data;
  }
}
