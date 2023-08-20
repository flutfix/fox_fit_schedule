import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fox_fit_schedule/schedule/bloc/schedule_bloc.dart';
import 'package:fox_fit_schedule/schedule/common/service_locator.dart';

abstract class BlocList {
  static List<BlocProvider> get providers => [
        BlocProvider<ScheduleBloc>(create: (ctx) => sl<ScheduleBloc>()),
      ];
}
