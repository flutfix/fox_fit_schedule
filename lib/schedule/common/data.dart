import 'package:dartz/dartz.dart';
import 'package:fox_fit_schedule/schedule/models/failure.dart';

typedef Data<T> = Future<Either<Failure, T>>;
