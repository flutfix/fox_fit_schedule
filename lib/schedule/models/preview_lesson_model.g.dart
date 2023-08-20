// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preview_lesson_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PreviewLessonModel _$$_PreviewLessonModelFromJson(
        Map<String, dynamic> json) =>
    _$_PreviewLessonModel(
      id: json['id'] as String,
      byAppointment: json['by_appointment'] as bool,
      clientBooking: json['client_booking'] as bool,
      free: json['free'] as bool,
      booking: json['booking'] as int,
      capacity: json['capacity'] as int,
      duration: json['duration'] as int,
      startDate: DateTimeSerializer.fromJsonFormatyyyyMMdd(
          json['start_date'] as String),
      endDate:
          DateTimeSerializer.fromJsonFormatyyyyMMdd(json['end_date'] as String),
      placeId: json['place_id'] as String,
      placeName: json['place_name'] as String,
      serviceId: json['service_id'] as String,
      serviceName: json['service_name'] as String,
      trainerId: json['trainer_id'] as String,
      trainerName: json['trainer_name'] as String,
    );

Map<String, dynamic> _$$_PreviewLessonModelToJson(
        _$_PreviewLessonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'by_appointment': instance.byAppointment,
      'client_booking': instance.clientBooking,
      'free': instance.free,
      'booking': instance.booking,
      'capacity': instance.capacity,
      'duration': instance.duration,
      'start_date': DateTimeSerializer.toJsonFormatyyyyMMdd(instance.startDate),
      'end_date': DateTimeSerializer.toJsonFormatyyyyMMdd(instance.endDate),
      'place_id': instance.placeId,
      'place_name': instance.placeName,
      'service_id': instance.serviceId,
      'service_name': instance.serviceName,
      'trainer_id': instance.trainerId,
      'trainer_name': instance.trainerName,
    };
