// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScheduleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId, DateTime startDate) fetchSchedule,
    required TResult Function(CategoryModel category) chooseCategory,
    required TResult Function(String clubId, DateTime startDate)
        changeStartDateSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId, DateTime startDate)? fetchSchedule,
    TResult? Function(CategoryModel category)? chooseCategory,
    TResult? Function(String clubId, DateTime startDate)?
        changeStartDateSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId, DateTime startDate)? fetchSchedule,
    TResult Function(CategoryModel category)? chooseCategory,
    TResult Function(String clubId, DateTime startDate)?
        changeStartDateSchedule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleFetchScheduleEvent value) fetchSchedule,
    required TResult Function(ScheduleChooseCategoryEvent value) chooseCategory,
    required TResult Function(ScheduleChangeStartDateScheduleEvent value)
        changeStartDateSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleFetchScheduleEvent value)? fetchSchedule,
    TResult? Function(ScheduleChooseCategoryEvent value)? chooseCategory,
    TResult? Function(ScheduleChangeStartDateScheduleEvent value)?
        changeStartDateSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleFetchScheduleEvent value)? fetchSchedule,
    TResult Function(ScheduleChooseCategoryEvent value)? chooseCategory,
    TResult Function(ScheduleChangeStartDateScheduleEvent value)?
        changeStartDateSchedule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEventCopyWith<$Res> {
  factory $ScheduleEventCopyWith(
          ScheduleEvent value, $Res Function(ScheduleEvent) then) =
      _$ScheduleEventCopyWithImpl<$Res, ScheduleEvent>;
}

/// @nodoc
class _$ScheduleEventCopyWithImpl<$Res, $Val extends ScheduleEvent>
    implements $ScheduleEventCopyWith<$Res> {
  _$ScheduleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScheduleFetchScheduleEventCopyWith<$Res> {
  factory _$$ScheduleFetchScheduleEventCopyWith(
          _$ScheduleFetchScheduleEvent value,
          $Res Function(_$ScheduleFetchScheduleEvent) then) =
      __$$ScheduleFetchScheduleEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String clubId, DateTime startDate});
}

/// @nodoc
class __$$ScheduleFetchScheduleEventCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$ScheduleFetchScheduleEvent>
    implements _$$ScheduleFetchScheduleEventCopyWith<$Res> {
  __$$ScheduleFetchScheduleEventCopyWithImpl(
      _$ScheduleFetchScheduleEvent _value,
      $Res Function(_$ScheduleFetchScheduleEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? startDate = null,
  }) {
    return _then(_$ScheduleFetchScheduleEvent(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ScheduleFetchScheduleEvent implements ScheduleFetchScheduleEvent {
  const _$ScheduleFetchScheduleEvent(
      {required this.clubId, required this.startDate});

  @override
  final String clubId;
  @override
  final DateTime startDate;

  @override
  String toString() {
    return 'ScheduleEvent.fetchSchedule(clubId: $clubId, startDate: $startDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleFetchScheduleEvent &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clubId, startDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleFetchScheduleEventCopyWith<_$ScheduleFetchScheduleEvent>
      get copyWith => __$$ScheduleFetchScheduleEventCopyWithImpl<
          _$ScheduleFetchScheduleEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId, DateTime startDate) fetchSchedule,
    required TResult Function(CategoryModel category) chooseCategory,
    required TResult Function(String clubId, DateTime startDate)
        changeStartDateSchedule,
  }) {
    return fetchSchedule(clubId, startDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId, DateTime startDate)? fetchSchedule,
    TResult? Function(CategoryModel category)? chooseCategory,
    TResult? Function(String clubId, DateTime startDate)?
        changeStartDateSchedule,
  }) {
    return fetchSchedule?.call(clubId, startDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId, DateTime startDate)? fetchSchedule,
    TResult Function(CategoryModel category)? chooseCategory,
    TResult Function(String clubId, DateTime startDate)?
        changeStartDateSchedule,
    required TResult orElse(),
  }) {
    if (fetchSchedule != null) {
      return fetchSchedule(clubId, startDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleFetchScheduleEvent value) fetchSchedule,
    required TResult Function(ScheduleChooseCategoryEvent value) chooseCategory,
    required TResult Function(ScheduleChangeStartDateScheduleEvent value)
        changeStartDateSchedule,
  }) {
    return fetchSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleFetchScheduleEvent value)? fetchSchedule,
    TResult? Function(ScheduleChooseCategoryEvent value)? chooseCategory,
    TResult? Function(ScheduleChangeStartDateScheduleEvent value)?
        changeStartDateSchedule,
  }) {
    return fetchSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleFetchScheduleEvent value)? fetchSchedule,
    TResult Function(ScheduleChooseCategoryEvent value)? chooseCategory,
    TResult Function(ScheduleChangeStartDateScheduleEvent value)?
        changeStartDateSchedule,
    required TResult orElse(),
  }) {
    if (fetchSchedule != null) {
      return fetchSchedule(this);
    }
    return orElse();
  }
}

abstract class ScheduleFetchScheduleEvent implements ScheduleEvent {
  const factory ScheduleFetchScheduleEvent(
      {required final String clubId,
      required final DateTime startDate}) = _$ScheduleFetchScheduleEvent;

  String get clubId;
  DateTime get startDate;
  @JsonKey(ignore: true)
  _$$ScheduleFetchScheduleEventCopyWith<_$ScheduleFetchScheduleEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleChooseCategoryEventCopyWith<$Res> {
  factory _$$ScheduleChooseCategoryEventCopyWith(
          _$ScheduleChooseCategoryEvent value,
          $Res Function(_$ScheduleChooseCategoryEvent) then) =
      __$$ScheduleChooseCategoryEventCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryModel category});

  $CategoryModelCopyWith<$Res> get category;
}

/// @nodoc
class __$$ScheduleChooseCategoryEventCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$ScheduleChooseCategoryEvent>
    implements _$$ScheduleChooseCategoryEventCopyWith<$Res> {
  __$$ScheduleChooseCategoryEventCopyWithImpl(
      _$ScheduleChooseCategoryEvent _value,
      $Res Function(_$ScheduleChooseCategoryEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$ScheduleChooseCategoryEvent(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res> get category {
    return $CategoryModelCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$ScheduleChooseCategoryEvent implements ScheduleChooseCategoryEvent {
  const _$ScheduleChooseCategoryEvent({required this.category});

  @override
  final CategoryModel category;

  @override
  String toString() {
    return 'ScheduleEvent.chooseCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleChooseCategoryEvent &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleChooseCategoryEventCopyWith<_$ScheduleChooseCategoryEvent>
      get copyWith => __$$ScheduleChooseCategoryEventCopyWithImpl<
          _$ScheduleChooseCategoryEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId, DateTime startDate) fetchSchedule,
    required TResult Function(CategoryModel category) chooseCategory,
    required TResult Function(String clubId, DateTime startDate)
        changeStartDateSchedule,
  }) {
    return chooseCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId, DateTime startDate)? fetchSchedule,
    TResult? Function(CategoryModel category)? chooseCategory,
    TResult? Function(String clubId, DateTime startDate)?
        changeStartDateSchedule,
  }) {
    return chooseCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId, DateTime startDate)? fetchSchedule,
    TResult Function(CategoryModel category)? chooseCategory,
    TResult Function(String clubId, DateTime startDate)?
        changeStartDateSchedule,
    required TResult orElse(),
  }) {
    if (chooseCategory != null) {
      return chooseCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleFetchScheduleEvent value) fetchSchedule,
    required TResult Function(ScheduleChooseCategoryEvent value) chooseCategory,
    required TResult Function(ScheduleChangeStartDateScheduleEvent value)
        changeStartDateSchedule,
  }) {
    return chooseCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleFetchScheduleEvent value)? fetchSchedule,
    TResult? Function(ScheduleChooseCategoryEvent value)? chooseCategory,
    TResult? Function(ScheduleChangeStartDateScheduleEvent value)?
        changeStartDateSchedule,
  }) {
    return chooseCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleFetchScheduleEvent value)? fetchSchedule,
    TResult Function(ScheduleChooseCategoryEvent value)? chooseCategory,
    TResult Function(ScheduleChangeStartDateScheduleEvent value)?
        changeStartDateSchedule,
    required TResult orElse(),
  }) {
    if (chooseCategory != null) {
      return chooseCategory(this);
    }
    return orElse();
  }
}

abstract class ScheduleChooseCategoryEvent implements ScheduleEvent {
  const factory ScheduleChooseCategoryEvent(
      {required final CategoryModel category}) = _$ScheduleChooseCategoryEvent;

  CategoryModel get category;
  @JsonKey(ignore: true)
  _$$ScheduleChooseCategoryEventCopyWith<_$ScheduleChooseCategoryEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleChangeStartDateScheduleEventCopyWith<$Res> {
  factory _$$ScheduleChangeStartDateScheduleEventCopyWith(
          _$ScheduleChangeStartDateScheduleEvent value,
          $Res Function(_$ScheduleChangeStartDateScheduleEvent) then) =
      __$$ScheduleChangeStartDateScheduleEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String clubId, DateTime startDate});
}

/// @nodoc
class __$$ScheduleChangeStartDateScheduleEventCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res,
        _$ScheduleChangeStartDateScheduleEvent>
    implements _$$ScheduleChangeStartDateScheduleEventCopyWith<$Res> {
  __$$ScheduleChangeStartDateScheduleEventCopyWithImpl(
      _$ScheduleChangeStartDateScheduleEvent _value,
      $Res Function(_$ScheduleChangeStartDateScheduleEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? startDate = null,
  }) {
    return _then(_$ScheduleChangeStartDateScheduleEvent(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ScheduleChangeStartDateScheduleEvent
    implements ScheduleChangeStartDateScheduleEvent {
  const _$ScheduleChangeStartDateScheduleEvent(
      {required this.clubId, required this.startDate});

  @override
  final String clubId;
  @override
  final DateTime startDate;

  @override
  String toString() {
    return 'ScheduleEvent.changeStartDateSchedule(clubId: $clubId, startDate: $startDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleChangeStartDateScheduleEvent &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clubId, startDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleChangeStartDateScheduleEventCopyWith<
          _$ScheduleChangeStartDateScheduleEvent>
      get copyWith => __$$ScheduleChangeStartDateScheduleEventCopyWithImpl<
          _$ScheduleChangeStartDateScheduleEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId, DateTime startDate) fetchSchedule,
    required TResult Function(CategoryModel category) chooseCategory,
    required TResult Function(String clubId, DateTime startDate)
        changeStartDateSchedule,
  }) {
    return changeStartDateSchedule(clubId, startDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId, DateTime startDate)? fetchSchedule,
    TResult? Function(CategoryModel category)? chooseCategory,
    TResult? Function(String clubId, DateTime startDate)?
        changeStartDateSchedule,
  }) {
    return changeStartDateSchedule?.call(clubId, startDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId, DateTime startDate)? fetchSchedule,
    TResult Function(CategoryModel category)? chooseCategory,
    TResult Function(String clubId, DateTime startDate)?
        changeStartDateSchedule,
    required TResult orElse(),
  }) {
    if (changeStartDateSchedule != null) {
      return changeStartDateSchedule(clubId, startDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleFetchScheduleEvent value) fetchSchedule,
    required TResult Function(ScheduleChooseCategoryEvent value) chooseCategory,
    required TResult Function(ScheduleChangeStartDateScheduleEvent value)
        changeStartDateSchedule,
  }) {
    return changeStartDateSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleFetchScheduleEvent value)? fetchSchedule,
    TResult? Function(ScheduleChooseCategoryEvent value)? chooseCategory,
    TResult? Function(ScheduleChangeStartDateScheduleEvent value)?
        changeStartDateSchedule,
  }) {
    return changeStartDateSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleFetchScheduleEvent value)? fetchSchedule,
    TResult Function(ScheduleChooseCategoryEvent value)? chooseCategory,
    TResult Function(ScheduleChangeStartDateScheduleEvent value)?
        changeStartDateSchedule,
    required TResult orElse(),
  }) {
    if (changeStartDateSchedule != null) {
      return changeStartDateSchedule(this);
    }
    return orElse();
  }
}

abstract class ScheduleChangeStartDateScheduleEvent implements ScheduleEvent {
  const factory ScheduleChangeStartDateScheduleEvent(
          {required final String clubId, required final DateTime startDate}) =
      _$ScheduleChangeStartDateScheduleEvent;

  String get clubId;
  DateTime get startDate;
  @JsonKey(ignore: true)
  _$$ScheduleChangeStartDateScheduleEventCopyWith<
          _$ScheduleChangeStartDateScheduleEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(Failure failure) failure,
    required TResult Function(ScheduleModel schedule,
            CategoryModel chosenCategory, DateTime startDateSchedule)
        fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetching,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ScheduleModel schedule, CategoryModel chosenCategory,
            DateTime startDateSchedule)?
        fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(Failure failure)? failure,
    TResult Function(ScheduleModel schedule, CategoryModel chosenCategory,
            DateTime startDateSchedule)?
        fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScheduleFetchingState value) fetching,
    required TResult Function(_ScheduleErrorState value) failure,
    required TResult Function(_ScheduleFetchedState value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleFetchingState value)? fetching,
    TResult? Function(_ScheduleErrorState value)? failure,
    TResult? Function(_ScheduleFetchedState value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleFetchingState value)? fetching,
    TResult Function(_ScheduleErrorState value)? failure,
    TResult Function(_ScheduleFetchedState value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(
          ScheduleState value, $Res Function(ScheduleState) then) =
      _$ScheduleStateCopyWithImpl<$Res, ScheduleState>;
}

/// @nodoc
class _$ScheduleStateCopyWithImpl<$Res, $Val extends ScheduleState>
    implements $ScheduleStateCopyWith<$Res> {
  _$ScheduleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ScheduleFetchingStateCopyWith<$Res> {
  factory _$$_ScheduleFetchingStateCopyWith(_$_ScheduleFetchingState value,
          $Res Function(_$_ScheduleFetchingState) then) =
      __$$_ScheduleFetchingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ScheduleFetchingStateCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$_ScheduleFetchingState>
    implements _$$_ScheduleFetchingStateCopyWith<$Res> {
  __$$_ScheduleFetchingStateCopyWithImpl(_$_ScheduleFetchingState _value,
      $Res Function(_$_ScheduleFetchingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ScheduleFetchingState implements _ScheduleFetchingState {
  const _$_ScheduleFetchingState();

  @override
  String toString() {
    return 'ScheduleState.fetching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ScheduleFetchingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(Failure failure) failure,
    required TResult Function(ScheduleModel schedule,
            CategoryModel chosenCategory, DateTime startDateSchedule)
        fetched,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetching,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ScheduleModel schedule, CategoryModel chosenCategory,
            DateTime startDateSchedule)?
        fetched,
  }) {
    return fetching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(Failure failure)? failure,
    TResult Function(ScheduleModel schedule, CategoryModel chosenCategory,
            DateTime startDateSchedule)?
        fetched,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScheduleFetchingState value) fetching,
    required TResult Function(_ScheduleErrorState value) failure,
    required TResult Function(_ScheduleFetchedState value) fetched,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleFetchingState value)? fetching,
    TResult? Function(_ScheduleErrorState value)? failure,
    TResult? Function(_ScheduleFetchedState value)? fetched,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleFetchingState value)? fetching,
    TResult Function(_ScheduleErrorState value)? failure,
    TResult Function(_ScheduleFetchedState value)? fetched,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class _ScheduleFetchingState implements ScheduleState {
  const factory _ScheduleFetchingState() = _$_ScheduleFetchingState;
}

/// @nodoc
abstract class _$$_ScheduleErrorStateCopyWith<$Res> {
  factory _$$_ScheduleErrorStateCopyWith(_$_ScheduleErrorState value,
          $Res Function(_$_ScheduleErrorState) then) =
      __$$_ScheduleErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$_ScheduleErrorStateCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$_ScheduleErrorState>
    implements _$$_ScheduleErrorStateCopyWith<$Res> {
  __$$_ScheduleErrorStateCopyWithImpl(
      _$_ScheduleErrorState _value, $Res Function(_$_ScheduleErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_ScheduleErrorState(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_ScheduleErrorState implements _ScheduleErrorState {
  const _$_ScheduleErrorState({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ScheduleState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleErrorState &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleErrorStateCopyWith<_$_ScheduleErrorState> get copyWith =>
      __$$_ScheduleErrorStateCopyWithImpl<_$_ScheduleErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(Failure failure) failure,
    required TResult Function(ScheduleModel schedule,
            CategoryModel chosenCategory, DateTime startDateSchedule)
        fetched,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetching,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ScheduleModel schedule, CategoryModel chosenCategory,
            DateTime startDateSchedule)?
        fetched,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(Failure failure)? failure,
    TResult Function(ScheduleModel schedule, CategoryModel chosenCategory,
            DateTime startDateSchedule)?
        fetched,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScheduleFetchingState value) fetching,
    required TResult Function(_ScheduleErrorState value) failure,
    required TResult Function(_ScheduleFetchedState value) fetched,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleFetchingState value)? fetching,
    TResult? Function(_ScheduleErrorState value)? failure,
    TResult? Function(_ScheduleFetchedState value)? fetched,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleFetchingState value)? fetching,
    TResult Function(_ScheduleErrorState value)? failure,
    TResult Function(_ScheduleFetchedState value)? fetched,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ScheduleErrorState implements ScheduleState {
  const factory _ScheduleErrorState({required final Failure failure}) =
      _$_ScheduleErrorState;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_ScheduleErrorStateCopyWith<_$_ScheduleErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ScheduleFetchedStateCopyWith<$Res> {
  factory _$$_ScheduleFetchedStateCopyWith(_$_ScheduleFetchedState value,
          $Res Function(_$_ScheduleFetchedState) then) =
      __$$_ScheduleFetchedStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ScheduleModel schedule,
      CategoryModel chosenCategory,
      DateTime startDateSchedule});

  $ScheduleModelCopyWith<$Res> get schedule;
  $CategoryModelCopyWith<$Res> get chosenCategory;
}

/// @nodoc
class __$$_ScheduleFetchedStateCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$_ScheduleFetchedState>
    implements _$$_ScheduleFetchedStateCopyWith<$Res> {
  __$$_ScheduleFetchedStateCopyWithImpl(_$_ScheduleFetchedState _value,
      $Res Function(_$_ScheduleFetchedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
    Object? chosenCategory = null,
    Object? startDateSchedule = null,
  }) {
    return _then(_$_ScheduleFetchedState(
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleModel,
      chosenCategory: null == chosenCategory
          ? _value.chosenCategory
          : chosenCategory // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      startDateSchedule: null == startDateSchedule
          ? _value.startDateSchedule
          : startDateSchedule // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleModelCopyWith<$Res> get schedule {
    return $ScheduleModelCopyWith<$Res>(_value.schedule, (value) {
      return _then(_value.copyWith(schedule: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res> get chosenCategory {
    return $CategoryModelCopyWith<$Res>(_value.chosenCategory, (value) {
      return _then(_value.copyWith(chosenCategory: value));
    });
  }
}

/// @nodoc

class _$_ScheduleFetchedState implements _ScheduleFetchedState {
  const _$_ScheduleFetchedState(
      {required this.schedule,
      required this.chosenCategory,
      required this.startDateSchedule});

  @override
  final ScheduleModel schedule;
  @override
  final CategoryModel chosenCategory;
  @override
  final DateTime startDateSchedule;

  @override
  String toString() {
    return 'ScheduleState.fetched(schedule: $schedule, chosenCategory: $chosenCategory, startDateSchedule: $startDateSchedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleFetchedState &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.chosenCategory, chosenCategory) ||
                other.chosenCategory == chosenCategory) &&
            (identical(other.startDateSchedule, startDateSchedule) ||
                other.startDateSchedule == startDateSchedule));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, schedule, chosenCategory, startDateSchedule);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleFetchedStateCopyWith<_$_ScheduleFetchedState> get copyWith =>
      __$$_ScheduleFetchedStateCopyWithImpl<_$_ScheduleFetchedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(Failure failure) failure,
    required TResult Function(ScheduleModel schedule,
            CategoryModel chosenCategory, DateTime startDateSchedule)
        fetched,
  }) {
    return fetched(schedule, chosenCategory, startDateSchedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetching,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ScheduleModel schedule, CategoryModel chosenCategory,
            DateTime startDateSchedule)?
        fetched,
  }) {
    return fetched?.call(schedule, chosenCategory, startDateSchedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(Failure failure)? failure,
    TResult Function(ScheduleModel schedule, CategoryModel chosenCategory,
            DateTime startDateSchedule)?
        fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(schedule, chosenCategory, startDateSchedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScheduleFetchingState value) fetching,
    required TResult Function(_ScheduleErrorState value) failure,
    required TResult Function(_ScheduleFetchedState value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleFetchingState value)? fetching,
    TResult? Function(_ScheduleErrorState value)? failure,
    TResult? Function(_ScheduleFetchedState value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleFetchingState value)? fetching,
    TResult Function(_ScheduleErrorState value)? failure,
    TResult Function(_ScheduleFetchedState value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _ScheduleFetchedState implements ScheduleState {
  const factory _ScheduleFetchedState(
      {required final ScheduleModel schedule,
      required final CategoryModel chosenCategory,
      required final DateTime startDateSchedule}) = _$_ScheduleFetchedState;

  ScheduleModel get schedule;
  CategoryModel get chosenCategory;
  DateTime get startDateSchedule;
  @JsonKey(ignore: true)
  _$$_ScheduleFetchedStateCopyWith<_$_ScheduleFetchedState> get copyWith =>
      throw _privateConstructorUsedError;
}
