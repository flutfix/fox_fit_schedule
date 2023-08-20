// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preview_lesson_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PreviewLessonModel _$PreviewLessonModelFromJson(Map<String, dynamic> json) {
  return _PreviewLessonModel.fromJson(json);
}

/// @nodoc
mixin _$PreviewLessonModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'by_appointment')
  bool get byAppointment => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_booking')
  bool get clientBooking => throw _privateConstructorUsedError;
  bool get free => throw _privateConstructorUsedError;
  int get booking => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'start_date',
      toJson: DateTimeSerializer.toJsonFormatyyyyMMdd,
      fromJson: DateTimeSerializer.fromJsonFormatyyyyMMdd)
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'end_date',
      toJson: DateTimeSerializer.toJsonFormatyyyyMMdd,
      fromJson: DateTimeSerializer.fromJsonFormatyyyyMMdd)
  DateTime get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_name')
  String get placeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_id')
  String get serviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_name')
  String get serviceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'trainer_id')
  String get trainerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'trainer_name')
  String get trainerName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreviewLessonModelCopyWith<PreviewLessonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewLessonModelCopyWith<$Res> {
  factory $PreviewLessonModelCopyWith(
          PreviewLessonModel value, $Res Function(PreviewLessonModel) then) =
      _$PreviewLessonModelCopyWithImpl<$Res, PreviewLessonModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'by_appointment') bool byAppointment,
      @JsonKey(name: 'client_booking') bool clientBooking,
      bool free,
      int booking,
      int capacity,
      int duration,
      @JsonKey(
          name: 'start_date',
          toJson: DateTimeSerializer.toJsonFormatyyyyMMdd,
          fromJson: DateTimeSerializer.fromJsonFormatyyyyMMdd)
      DateTime startDate,
      @JsonKey(
          name: 'end_date',
          toJson: DateTimeSerializer.toJsonFormatyyyyMMdd,
          fromJson: DateTimeSerializer.fromJsonFormatyyyyMMdd)
      DateTime endDate,
      @JsonKey(name: 'place_id') String placeId,
      @JsonKey(name: 'place_name') String placeName,
      @JsonKey(name: 'service_id') String serviceId,
      @JsonKey(name: 'service_name') String serviceName,
      @JsonKey(name: 'trainer_id') String trainerId,
      @JsonKey(name: 'trainer_name') String trainerName});
}

/// @nodoc
class _$PreviewLessonModelCopyWithImpl<$Res, $Val extends PreviewLessonModel>
    implements $PreviewLessonModelCopyWith<$Res> {
  _$PreviewLessonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? byAppointment = null,
    Object? clientBooking = null,
    Object? free = null,
    Object? booking = null,
    Object? capacity = null,
    Object? duration = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? placeId = null,
    Object? placeName = null,
    Object? serviceId = null,
    Object? serviceName = null,
    Object? trainerId = null,
    Object? trainerName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      byAppointment: null == byAppointment
          ? _value.byAppointment
          : byAppointment // ignore: cast_nullable_to_non_nullable
              as bool,
      clientBooking: null == clientBooking
          ? _value.clientBooking
          : clientBooking // ignore: cast_nullable_to_non_nullable
              as bool,
      free: null == free
          ? _value.free
          : free // ignore: cast_nullable_to_non_nullable
              as bool,
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as int,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      trainerId: null == trainerId
          ? _value.trainerId
          : trainerId // ignore: cast_nullable_to_non_nullable
              as String,
      trainerName: null == trainerName
          ? _value.trainerName
          : trainerName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PreviewLessonModelCopyWith<$Res>
    implements $PreviewLessonModelCopyWith<$Res> {
  factory _$$_PreviewLessonModelCopyWith(_$_PreviewLessonModel value,
          $Res Function(_$_PreviewLessonModel) then) =
      __$$_PreviewLessonModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'by_appointment') bool byAppointment,
      @JsonKey(name: 'client_booking') bool clientBooking,
      bool free,
      int booking,
      int capacity,
      int duration,
      @JsonKey(
          name: 'start_date',
          toJson: DateTimeSerializer.toJsonFormatyyyyMMdd,
          fromJson: DateTimeSerializer.fromJsonFormatyyyyMMdd)
      DateTime startDate,
      @JsonKey(
          name: 'end_date',
          toJson: DateTimeSerializer.toJsonFormatyyyyMMdd,
          fromJson: DateTimeSerializer.fromJsonFormatyyyyMMdd)
      DateTime endDate,
      @JsonKey(name: 'place_id') String placeId,
      @JsonKey(name: 'place_name') String placeName,
      @JsonKey(name: 'service_id') String serviceId,
      @JsonKey(name: 'service_name') String serviceName,
      @JsonKey(name: 'trainer_id') String trainerId,
      @JsonKey(name: 'trainer_name') String trainerName});
}

/// @nodoc
class __$$_PreviewLessonModelCopyWithImpl<$Res>
    extends _$PreviewLessonModelCopyWithImpl<$Res, _$_PreviewLessonModel>
    implements _$$_PreviewLessonModelCopyWith<$Res> {
  __$$_PreviewLessonModelCopyWithImpl(
      _$_PreviewLessonModel _value, $Res Function(_$_PreviewLessonModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? byAppointment = null,
    Object? clientBooking = null,
    Object? free = null,
    Object? booking = null,
    Object? capacity = null,
    Object? duration = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? placeId = null,
    Object? placeName = null,
    Object? serviceId = null,
    Object? serviceName = null,
    Object? trainerId = null,
    Object? trainerName = null,
  }) {
    return _then(_$_PreviewLessonModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      byAppointment: null == byAppointment
          ? _value.byAppointment
          : byAppointment // ignore: cast_nullable_to_non_nullable
              as bool,
      clientBooking: null == clientBooking
          ? _value.clientBooking
          : clientBooking // ignore: cast_nullable_to_non_nullable
              as bool,
      free: null == free
          ? _value.free
          : free // ignore: cast_nullable_to_non_nullable
              as bool,
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as int,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      trainerId: null == trainerId
          ? _value.trainerId
          : trainerId // ignore: cast_nullable_to_non_nullable
              as String,
      trainerName: null == trainerName
          ? _value.trainerName
          : trainerName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PreviewLessonModel implements _PreviewLessonModel {
  const _$_PreviewLessonModel(
      {required this.id,
      @JsonKey(name: 'by_appointment') required this.byAppointment,
      @JsonKey(name: 'client_booking') required this.clientBooking,
      required this.free,
      required this.booking,
      required this.capacity,
      required this.duration,
      @JsonKey(
          name: 'start_date',
          toJson: DateTimeSerializer.toJsonFormatyyyyMMdd,
          fromJson: DateTimeSerializer.fromJsonFormatyyyyMMdd)
      required this.startDate,
      @JsonKey(
          name: 'end_date',
          toJson: DateTimeSerializer.toJsonFormatyyyyMMdd,
          fromJson: DateTimeSerializer.fromJsonFormatyyyyMMdd)
      required this.endDate,
      @JsonKey(name: 'place_id') required this.placeId,
      @JsonKey(name: 'place_name') required this.placeName,
      @JsonKey(name: 'service_id') required this.serviceId,
      @JsonKey(name: 'service_name') required this.serviceName,
      @JsonKey(name: 'trainer_id') required this.trainerId,
      @JsonKey(name: 'trainer_name') required this.trainerName});

  factory _$_PreviewLessonModel.fromJson(Map<String, dynamic> json) =>
      _$$_PreviewLessonModelFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'by_appointment')
  final bool byAppointment;
  @override
  @JsonKey(name: 'client_booking')
  final bool clientBooking;
  @override
  final bool free;
  @override
  final int booking;
  @override
  final int capacity;
  @override
  final int duration;
  @override
  @JsonKey(
      name: 'start_date',
      toJson: DateTimeSerializer.toJsonFormatyyyyMMdd,
      fromJson: DateTimeSerializer.fromJsonFormatyyyyMMdd)
  final DateTime startDate;
  @override
  @JsonKey(
      name: 'end_date',
      toJson: DateTimeSerializer.toJsonFormatyyyyMMdd,
      fromJson: DateTimeSerializer.fromJsonFormatyyyyMMdd)
  final DateTime endDate;
  @override
  @JsonKey(name: 'place_id')
  final String placeId;
  @override
  @JsonKey(name: 'place_name')
  final String placeName;
  @override
  @JsonKey(name: 'service_id')
  final String serviceId;
  @override
  @JsonKey(name: 'service_name')
  final String serviceName;
  @override
  @JsonKey(name: 'trainer_id')
  final String trainerId;
  @override
  @JsonKey(name: 'trainer_name')
  final String trainerName;

  @override
  String toString() {
    return 'PreviewLessonModel(id: $id, byAppointment: $byAppointment, clientBooking: $clientBooking, free: $free, booking: $booking, capacity: $capacity, duration: $duration, startDate: $startDate, endDate: $endDate, placeId: $placeId, placeName: $placeName, serviceId: $serviceId, serviceName: $serviceName, trainerId: $trainerId, trainerName: $trainerName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreviewLessonModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.byAppointment, byAppointment) ||
                other.byAppointment == byAppointment) &&
            (identical(other.clientBooking, clientBooking) ||
                other.clientBooking == clientBooking) &&
            (identical(other.free, free) || other.free == free) &&
            (identical(other.booking, booking) || other.booking == booking) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.trainerId, trainerId) ||
                other.trainerId == trainerId) &&
            (identical(other.trainerName, trainerName) ||
                other.trainerName == trainerName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      byAppointment,
      clientBooking,
      free,
      booking,
      capacity,
      duration,
      startDate,
      endDate,
      placeId,
      placeName,
      serviceId,
      serviceName,
      trainerId,
      trainerName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreviewLessonModelCopyWith<_$_PreviewLessonModel> get copyWith =>
      __$$_PreviewLessonModelCopyWithImpl<_$_PreviewLessonModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PreviewLessonModelToJson(
      this,
    );
  }
}

abstract class _PreviewLessonModel implements PreviewLessonModel {
  const factory _PreviewLessonModel(
          {required final String id,
          @JsonKey(name: 'by_appointment') required final bool byAppointment,
          @JsonKey(name: 'client_booking') required final bool clientBooking,
          required final bool free,
          required final int booking,
          required final int capacity,
          required final int duration,
          @JsonKey(
              name: 'start_date',
              toJson: DateTimeSerializer.toJsonFormatyyyyMMdd,
              fromJson: DateTimeSerializer.fromJsonFormatyyyyMMdd)
          required final DateTime startDate,
          @JsonKey(
              name: 'end_date',
              toJson: DateTimeSerializer.toJsonFormatyyyyMMdd,
              fromJson: DateTimeSerializer.fromJsonFormatyyyyMMdd)
          required final DateTime endDate,
          @JsonKey(name: 'place_id') required final String placeId,
          @JsonKey(name: 'place_name') required final String placeName,
          @JsonKey(name: 'service_id') required final String serviceId,
          @JsonKey(name: 'service_name') required final String serviceName,
          @JsonKey(name: 'trainer_id') required final String trainerId,
          @JsonKey(name: 'trainer_name') required final String trainerName}) =
      _$_PreviewLessonModel;

  factory _PreviewLessonModel.fromJson(Map<String, dynamic> json) =
      _$_PreviewLessonModel.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'by_appointment')
  bool get byAppointment;
  @override
  @JsonKey(name: 'client_booking')
  bool get clientBooking;
  @override
  bool get free;
  @override
  int get booking;
  @override
  int get capacity;
  @override
  int get duration;
  @override
  @JsonKey(
      name: 'start_date',
      toJson: DateTimeSerializer.toJsonFormatyyyyMMdd,
      fromJson: DateTimeSerializer.fromJsonFormatyyyyMMdd)
  DateTime get startDate;
  @override
  @JsonKey(
      name: 'end_date',
      toJson: DateTimeSerializer.toJsonFormatyyyyMMdd,
      fromJson: DateTimeSerializer.fromJsonFormatyyyyMMdd)
  DateTime get endDate;
  @override
  @JsonKey(name: 'place_id')
  String get placeId;
  @override
  @JsonKey(name: 'place_name')
  String get placeName;
  @override
  @JsonKey(name: 'service_id')
  String get serviceId;
  @override
  @JsonKey(name: 'service_name')
  String get serviceName;
  @override
  @JsonKey(name: 'trainer_id')
  String get trainerId;
  @override
  @JsonKey(name: 'trainer_name')
  String get trainerName;
  @override
  @JsonKey(ignore: true)
  _$$_PreviewLessonModelCopyWith<_$_PreviewLessonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
