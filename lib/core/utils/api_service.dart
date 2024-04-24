// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dio/dio.dart';

class ApiService {
  final baseUrl = 'https://www.googleapis.com/books/v1/';
  late final Dio _dio;

  ApiService() {
    _initDio();
  }

  void _initDio() {
    _dio = Dio()
      ..options.baseUrl = baseUrl
      ..options.responseType = ResponseType.json
      ..interceptors.add(LogInterceptor(
        responseBody: true,
        logPrint: (obj) => log(obj.toString())
      ));
  }

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$baseUrl$endPoint');

    return response.data;
  }
}
