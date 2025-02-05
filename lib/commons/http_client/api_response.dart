import 'package:dio/dio.dart';

class ApiResponse<T> {
  final T? data;
  final int? statusCode;
  final String? statusMessage;
  final Map<String, dynamic>? headers;

  ApiResponse({
    this.data,
    this.statusCode,
    this.statusMessage,
    this.headers,
  });

  factory ApiResponse.fromDioResponse(Response<T> response) {
    return ApiResponse(
      data: response.data,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      headers: response.headers.map,
    );
  }
}

class ApiError {
  final String message;
  final int? statusCode;
  final DioExceptionType errorType;
  final dynamic errorData;

  ApiError({
    required this.message,
    required this.errorType,
    this.statusCode,
    this.errorData,
  });

  factory ApiError.fromDioException(DioException dioException) {
    return ApiError(
      message: dioException.message ?? "",
      statusCode: dioException.response?.statusCode,
      errorType: dioException.type,
      errorData: dioException.response?.data,
    );
  }
}