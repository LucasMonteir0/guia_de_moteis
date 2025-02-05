import 'package:guia_de_moteis/commons/http_client/api_response.dart';

abstract class AppHttpClient {
  Future<ApiResponse<T>> get<T>(String path,
      {Map<String, dynamic>? queryParameters});

  Future<ApiResponse<T>> post<T>(String path, {dynamic data});

  Future<ApiResponse<T>> put<T>(String path, {dynamic data});

  Future<ApiResponse<T>> delete<T>(String path, {dynamic data});

  Future<ApiResponse<T>> patch<T>(String path, {dynamic data});
}
