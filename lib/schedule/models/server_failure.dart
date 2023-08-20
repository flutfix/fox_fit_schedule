import 'package:fox_fit_schedule/schedule/models/failure.dart';

class ServerFailure extends Failure {
  const ServerFailure({
    int? statusCode,
    String? cause,
  }) : super(statusCode: statusCode, cause: cause);
}
