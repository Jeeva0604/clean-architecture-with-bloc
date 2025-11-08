import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_clean_arc/core/const/api_urls.dart';
import '../error/failures.dart';

class DioClient {
  final Dio _dio;

  DioClient(this._dio) {
    _dio.options = BaseOptions(
      baseUrl: ApiUrls.apiUrl, // change to your API base
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'Content-Type': 'application/json'},
    );
  }

  // ---------- GET ----------
  Future<Response> get(String endpoint) async {
    try {
      var res = await _dio.get(endpoint);
      if (res.statusCode == 200) {
        return res;
      } else {
        throw Exception(res.data["msg"]);
      }
    } catch (e) {
      throw ServerFailure(message: e.toString());
    }
  }

  // ---------- POST ----------
  Future<Response> post(String endpoint, Map<String, dynamic> data) async {
    try {
      return await _dio.post(endpoint, data: data);
    } catch (e) {
      throw ServerFailure(message: e.toString());
    }
  }

  // ---------- IMAGE UPLOAD ----------
  Future<Response> uploadFile({
    required String endpoint,
    required File file,
    Map<String, dynamic>? data,
    String fieldName = 'file', // your backend expects this key usually
  }) async {
    try {
      final formData = FormData.fromMap({
        if (data != null) ...data,
        fieldName: await MultipartFile.fromFile(
          file.path,
          filename: file.uri.pathSegments.last,
        ),
      });

      final response = await _dio.post(
        endpoint,
        data: formData,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );

      return response;
    } catch (e) {
      throw ServerFailure(message: e.toString());
    }
  }
}
