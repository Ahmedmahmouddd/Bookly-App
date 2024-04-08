import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with API server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout with API server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout with API server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to API server was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure(
            'There was a Connection Error, Check your connectivity');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure(
              'There was a Connection Error, Check your connectivity');
        } else {
          return ServerFailure('Unexpected error, Please try again');
        }
      default:
        return ServerFailure('Oops, there was an error');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Request not found, ERROR 404');
    } else if (statusCode == 500) {
      return ServerFailure('Enternal Server Error, please try again later');
    } else {
      return ServerFailure('Oops, there was an error');
    }
  }
}
