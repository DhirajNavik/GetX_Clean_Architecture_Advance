import 'package:dio/dio.dart';

import '../error/error_model.dart';
import 'exception.dart';


class ExceptionHandler {
  ExceptionHandler._();

  static APIException handle(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionError:
        return const APIException(
          message: 'Please check your internet connection.',
        );

      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return const APIException(
          message: 'Server is not responding.',
        );

      case DioExceptionType.cancel:
        return const APIException(
          message: 'Request cancelled.',
        );

      case DioExceptionType.badResponse:
        return APIException(
          message: _message(
            error.response?.statusCode,
            error.response?.data,
          ),
        );

      default:
        return APIException(
          message: error.message ?? 'Unexpected error occurred.',
        );
    }
  }

  static String _message(
    int? statusCode,
    dynamic data,
  ) {
    final body = data is Map<String, dynamic> ? data : null;

    final backendMessage = ErrorModel.fromJson(body).message;

    if (backendMessage != null && backendMessage.isNotEmpty) {
      return backendMessage;
    }

    switch (statusCode) {
      case 400:
        return "Bad Request";

      case 401:
        return "Unauthorized";

      case 403:
        return "Forbidden";

      case 404:
        return "Resource Not Found";

      case 500:
        return "Internal Server Error";

      default:
        return "Unexpected error occurred";
    }
  }
}