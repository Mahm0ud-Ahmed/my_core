import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../utils/app_interceptor.dart';
import '../utils/constant.dart';
import 'service_interface.dart';

class DioService implements ServiceInterface {
  late final Dio _dio;

  @override
  String get name => "Api";

  @override
  Future<Dio> initialize() async {
    _dio = Dio(_baseOptions());
    if (!kReleaseMode) {
      _dio.interceptors.add(AppInterceptor());
    }
    return _dio;
  }

  static BaseOptions _baseOptions() {
    return BaseOptions(
      baseUrl: Constant.kBaseUrl,
      connectTimeout: const Duration(minutes: 1),
      receiveTimeout: const Duration(minutes: 30),
      sendTimeout: const Duration(minutes: 5),
      contentType: "application/json",
    );
  }
}
