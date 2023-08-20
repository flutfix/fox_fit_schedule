// ignore_for_file: cascade_invocations

import 'package:dio/dio.dart';
import 'package:fox_fit_schedule/schedule/api/schedule_api.dart';
import 'package:fox_fit_schedule/schedule/bloc/schedule_bloc.dart';
import 'package:fox_fit_schedule/schedule/common/logger_service.dart';
import 'package:fox_fit_schedule/schedule/common/token_interceptor.dart';
import 'package:fox_fit_schedule/schedule/config/config.dart';
import 'package:fox_fit_schedule/schedule/repository/i_schedule_repository.dart';
import 'package:fox_fit_schedule/schedule/repository/schedule_repository.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

void injectDependencies() {
  // BLOC.
  sl.registerLazySingleton(() => ScheduleBloc(sl(), sl()));

  // REPOSITORY.
  sl.registerLazySingleton<IScheduleRepository>(() => ScheduleRepository(sl(), sl()));

  // API.
  sl.registerLazySingleton(() => ScheduleApi(sl()));

  // CORE.
  sl.registerLazySingleton(() => LoggerService.ingect);
  sl.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        baseUrl: AppConfig.apiUrl,
        headers: {'Content-Type': 'application/json'},
      ),
    ),
    instanceName: 'initial',
  );
  sl.registerLazySingleton<Dio>(
    () => sl<Dio>(instanceName: 'initial')..interceptors.addAll([TokenInterceptor()]),
  );
}
