import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            errorMessage: 'Connection timed out with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send timed out with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(
            errorMessage:
                'Recive timed out with ApiServer please try again later !');

      case DioExceptionType.badCertificate:
        return ServerFailure(
            errorMessage: 'Bad Certificate please try again later !');

      case DioExceptionType.badResponse:
        return ServerFailure(
            errorMessage: 'Bad Response please try again later !');

      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Cancel please try again later !');

      case DioExceptionType.connectionError:
        return ServerFailure(
            errorMessage: 'Connection Error please try again later !');

      case DioExceptionType.unknown:
        return ServerFailure(
            errorMessage: 'Unknown Problem please try again later !');

      default:
        return ServerFailure(
            errorMessage: 'Opps There was an Error, Please try again ! ');
    }
  }
}
