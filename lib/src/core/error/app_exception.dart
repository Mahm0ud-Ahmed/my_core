
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:my_core/src/core/error/error.dart';

import '../config/l10n/generated/l10n.dart';

class AppException implements Exception {
  var error;
  AppException(this.error);

  ErrorModel get handleError {
    late ErrorModel errorModel;
    if(error is DioError){
      switch (error.type) {
        case DioErrorType.connectionTimeout:
          errorModel = ErrorModel(
            code: error.response?.statusCode,
            message: S.current.connect_timeout_message
          );
          break;
        case DioErrorType.sendTimeout:
          errorModel = ErrorModel(
            code: error.response?.statusCode,
            message: S.current.send_timeout_message,
          );
          break;
        case DioErrorType.receiveTimeout:
          errorModel = ErrorModel(
            code: error.response?.statusCode,
            message: S.current.receive_timeout_message
          );
          break;
        case DioErrorType.badCertificate:
          errorModel = ErrorModel(
            code: error.response?.statusCode,
            message: S.current.bad_certificate_message
          );
          break;
        case DioErrorType.connectionError:
          errorModel = ErrorModel(
            code: error.response?.statusCode,
            message: S.current.connection_error_message
          );
          break;
        case DioErrorType.cancel:
          errorModel = ErrorModel(
            code: error.response?.statusCode,
            message: S.current.cancel_error_message
          );
          break;
        case DioErrorType.badResponse:
          if(error.response?.statusCode == HttpStatus.badRequest){
            errorModel = ErrorModel.fromJson(error.response?.data);
          }else{
            String message = getErrorMessage(error.response?.statusCode);
            errorModel = ErrorModel(
              message: message,
            );
          }
          break;
        case DioErrorType.unknown:
          String message;
          if(error.error is SocketException) {
            message = getErrorMessage(error.response?.statusCode);
          }else{
            message = S.current.unknown_error_message;
          }
          errorModel = ErrorModel(message: message);
          break;
      }
    }else{
      errorModel = ErrorModel(message: S.current.unknown_error_message);
    }
    return errorModel;
  }

  String getErrorMessage(int? statusCode){
    String message;
    switch (statusCode) {
      case HttpStatus.continue_:
        message = S.current.continue_100_message;
        break;
      case HttpStatus.switchingProtocols:
        message = S.current.switching_protocols_101_message;
        break;
      case HttpStatus.resetContent:
        message = S.current.reset_content_205_message;
        break;
      case HttpStatus.partialContent:
        message = S.current.partial_content_206_message;
        break;
      case HttpStatus.multipleChoices:
        message = S.current.multiple_choices_300_message;
        break;
      case HttpStatus.movedPermanently:
        message = S.current.moved_permanently_301_message;
        break;
      case HttpStatus.found:
        message = S.current.found_302_message;
        break;
      case HttpStatus.seeOther:
        message = S.current.see_other_303_message;
        break;
      case HttpStatus.notModified:
        message = S.current.not_modified_304_message;
        break;
      case HttpStatus.useProxy:
        message = S.current.use_proxy_305_message;
        break;
      case HttpStatus.temporaryRedirect:
        message = S.current.temporary_redirect_307_message;
        break;
      case HttpStatus.unauthorized:
        message = S.current.unauthorized_401_message;
        break;
      case HttpStatus.paymentRequired:
        message = S.current.payment_required_402_message;
        break;
      case HttpStatus.forbidden:
        message = S.current.forbidden_403_message;
        break;
      case HttpStatus.notFound:
        message = S.current.not_found_404_message;
        break;
      case HttpStatus.methodNotAllowed:
        message = S.current.method_not_allowed_405_message;
        break;
      case HttpStatus.notAcceptable:
        message = S.current.not_acceptable_406_message;
        break;
      case HttpStatus.proxyAuthenticationRequired:
        message = S.current.proxy_authentication_required_407_message;
        break;
      case HttpStatus.requestTimeout:
        message = S.current.request_timeout_408_message;
        break;
      case HttpStatus.conflict:
        message = S.current.conflict_409_message;
        break;
      case HttpStatus.gone:
        message = S.current.gone_410_message;
        break;
      case HttpStatus.lengthRequired:
        message = S.current.length_required_411_message;
        break;
      case HttpStatus.preconditionFailed:
        message = S.current.precondition_failed_412_message;
        break;
      case HttpStatus.requestEntityTooLarge:
        message = S.current.requestEntity_tooLarge_413_message;
        break;
      case HttpStatus.requestUriTooLong:
        message = S.current.requestUri_tooLong_414_message;
        break;
      case HttpStatus.unsupportedMediaType:
        message = S.current.unsupported_media_type_415_message;
        break;
      case HttpStatus.requestedRangeNotSatisfiable:
        message = S.current.requested_range_not_satisfiable_416_message;
        break;
      case HttpStatus.expectationFailed:
        message = S.current.expectation_failed_417_message;
        break;
      case HttpStatus.internalServerError:
        message = S.current.internal_server_error_500_message;
        break;
      case HttpStatus.notImplemented:
        message = S.current.not_implemented_error_501_message;
        break;
      case HttpStatus.badGateway:
        message = S.current.bad_gateway_502_message;
        break;
      case HttpStatus.serviceUnavailable:
        message = S.current.service_unavailable_503_message;
        break;
      case HttpStatus.gatewayTimeout:
        message = S.current.gateway_timeout_504_message;
        break;
      case HttpStatus.httpVersionNotSupported:
        message = S.current.http_version_not_supported_505_message;
        break;
      case HttpStatus.variantAlsoNegotiates:
        message = S.current.variant_also_negotiates_506_message;
        break;
      case HttpStatus.insufficientStorage:
        message = S.current.insufficient_storage_507_message;
        break;
      case HttpStatus.loopDetected:
        message = S.current.loop_detected_508_message;
        break;
      case HttpStatus.notExtended:
        message = S.current.not_extended_510_message;
        break;
      case HttpStatus.networkAuthenticationRequired:
        message = S.current.network_authentication_required_511_message;
        break;
      case HttpStatus.networkConnectTimeoutError:
        message = S.current.network_connect_timeout_error_599_message;
        break;
      case null:
        message = S.current.check_connection_message;
        break;
      default:
        return S.current.unknown_error_message;
    }
    return message;
  }

}