import 'package:dio/dio.dart';

import '../config/l10n/generated/l10n.dart';
import 'error_model.dart';

class ErrorHandling{

  static ErrorModel handleError(DioError error){
    late ErrorModel errorModel;
    switch (error.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
      case DioErrorType.other:
        errorModel = ErrorModel(
          status: S.current.handle_error_status_connect_time_out,
          message: S.current.handle_error_message_connect_time_out,
        );
        break;
      case DioErrorType.cancel:
        errorModel = ErrorModel(
          status: S.current.handle_error_status_cancel,
          message: S.current.handle_error_message_cancel,
        );
        break;
      case DioErrorType.response:
        errorModel = ErrorModel(
          status: error.response.toString(),
          code: error.response?.statusCode.toString(),
          message: error.response?.statusMessage,
        );
        break;
    }
    return errorModel;
  }
}