import 'package:arch_team_power/core/errors/handle_response.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  final String baseUrl = "https://archtech.test-trifhi.com/api/";

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final response = await dio.get('$baseUrl$endPoint');
    return handleResponse(response.data);
  }

  Future<Map<String, dynamic>> post({
    required String endPoint,
    dynamic data,
    bool isMultipart = false,
  }) async {
    final response = await dio.post('$baseUrl$endPoint', data: data);
    return handleResponse(response.data);
  }
   Future<Map<String, dynamic>> put({
    required String endPoint,
    Map<String, dynamic>? data,
  }) async {
    final response = await dio.put(
      '$baseUrl$endPoint',
      data: data,
    );
    return handleResponse(response.data);
  }
 Future<Map<String, dynamic>> delete({
    required String endPoint,
  }) async {
    final response = await dio.delete('$baseUrl$endPoint');
    return handleResponse(response.data);
  }
  
}
