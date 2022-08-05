import 'package:dio/dio.dart';
import 'package:floward_task/utils/logger.dart';

class DIOManger {
  static const String BaseUrl = 'https://my-json-server.typicode.com/';

  static Map<String, String> getHeader() {
    return {
      //'Authorization': 'Bearer $token',
      "Content-Type": "application/json",
    };
  }

  static Dio dio = Dio(BaseOptions(
      baseUrl: 'https://my-json-server.typicode.com/', headers: getHeader()));

  ///POST Method
  static Future<Response?> post({
    String? baseUrl,
    required String path,
    required Map<String, dynamic>? body,
  }) async {
    try {
      Logger.log(dio.options.headers, tag: 'Headers');
      final response = await dio.post(path, data: body);
      Logger.log('Response of posting to ${baseUrl ?? BaseUrl + path}:\n ${response.data}');
      return response;
    } catch (error) {
      Logger.log('Error in ${baseUrl ?? BaseUrl + path}:\n $error');
      return null;
    }
  }

  ///GET Method
  static Future<Response?> get({
    String? baseUrl,
    required String path,
    required Map<String, dynamic>? parameters,
  }) async {
    try {
      Logger.log('we are getting ${baseUrl ?? BaseUrl + path}:\n with param $parameters');
      final response = await dio.get(path, queryParameters: parameters);
      Logger.log('Response of getting ${baseUrl ?? BaseUrl + path}:\n ${response.data}');
      return response;
    } catch (error) {
      Logger.log('Error in getting ${baseUrl ?? BaseUrl + path}:\n $error');
      return null;
    }
  }

  ///PUT Method
  static Future<Response?> put({
    String? baseUrl,
    required String path,
    required Map<String, dynamic>? body,
  }) async {
    try {
      Logger.log(dio.options.headers, tag: 'Headers');
      final response = await dio.put(path, data: body);
      Logger.log('Response of putting to ${baseUrl ?? BaseUrl + path}:\n ${response.data}');
      return response;
    } catch (error) {
      Logger.log('Error in ${baseUrl ?? BaseUrl + path}:\n $error');
      return null;
    }
  }

  ///Upload Method
  static Future<Response?> uploadAndPost({
    String? baseUrl,
    required String path,
    required Map<String, dynamic> body,
  }) async {
    try {
      var formData = FormData.fromMap(body);
      final response = await dio.post(path, data: formData);
      return response;
    } catch (error) {
      return null;
    }
  }
}
