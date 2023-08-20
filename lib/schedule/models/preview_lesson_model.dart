import 'package:fox_fit_schedule/schedule/models/date_time_serializer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'preview_lesson_model.freezed.dart';
part 'preview_lesson_model.g.dart';

@freezed
class PreviewLessonModel with _$PreviewLessonModel {
  const factory PreviewLessonModel({
    required String id,
    @JsonKey(name: 'by_appointment')
        required bool byAppointment,
    @JsonKey(name: 'client_booking')
        required bool clientBooking,
    required bool free,
    required int booking,
    required int capacity,
    required int duration,
    @JsonKey(
      name: 'start_date',
      toJson: DateTimeSerializer.toJsonFormatyyyyMMdd,
      fromJson: DateTimeSerializer.fromJsonFormatyyyyMMdd,
    )
        required DateTime startDate,
    @JsonKey(
      name: 'end_date',
      toJson: DateTimeSerializer.toJsonFormatyyyyMMdd,
      fromJson: DateTimeSerializer.fromJsonFormatyyyyMMdd,
    )
        required DateTime endDate,
    @JsonKey(name: 'place_id')
        required String placeId,
    @JsonKey(name: 'place_name')
        required String placeName,
    @JsonKey(name: 'service_id')
        required String serviceId,
    @JsonKey(name: 'service_name')
        required String serviceName,
    @JsonKey(name: 'trainer_id')
        required String trainerId,
    @JsonKey(name: 'trainer_name')
        required String trainerName,
  }) = _PreviewLessonModel;

  factory PreviewLessonModel.fromJson(Map<String, dynamic> json) => _$PreviewLessonModelFromJson(json);
}
