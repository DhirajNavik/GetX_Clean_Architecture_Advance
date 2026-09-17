import 'dart:developer';

import 'package:dio/dio.dart';

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('${options.method} ${options.uri}', name: '*** Request ***');
    log('${options.headers}', name: "Headers :");
    if (options.data != null) {
      log('${options.data}', name: 'Request Data');
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log(
      '${response.statusCode} ${response.requestOptions.uri}',
      name: "*** Response ***",
    );
    if (response.data != null) {
      log('${response.data}', name: "Response Data");
    }
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (DioExceptionType.cancel == err.type) {
      log('Request Cancelled');
      return handler.next(err);
    }
    log("[ERROR] ${err.response?.statusCode}");
    log("[ERROR DATA] ${err.response?.data}");
    log("[ERROR MESSAGE] ${err.message}");
    handler.next(err);
  }
}
