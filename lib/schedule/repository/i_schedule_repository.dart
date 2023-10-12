import 'package:fox_fit_schedule/schedule/common/data.dart';
import 'package:fox_fit_schedule/schedule/models/schedule_model.dart';

abstract class IScheduleRepository {
  Data<ScheduleModel> fetchSchedule({
    required String clubId,
    required String startDate,
    required String endDate,
  });
}
