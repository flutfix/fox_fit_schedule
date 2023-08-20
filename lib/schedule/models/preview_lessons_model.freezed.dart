// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preview_lessons_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PreviewLessonsModel _$PreviewLessonsModelFromJson(Map<String, dynamic> json) {
  return _PreviewLessonsModel.fromJson(json);
}

/// @nodoc
mixin _$PreviewLessonsModel {
  @JsonKey(name: 'lessons')
  List<PreviewLessonModel> get previewLessons =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreviewLessonsModelCopyWith<PreviewLessonsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewLessonsModelCopyWith<$Res> {
  factory $PreviewLessonsModelCopyWith(
          PreviewLessonsModel value, $Res Function(PreviewLessonsModel) then) =
      _$PreviewLessonsModelCopyWithImpl<$Res, PreviewLessonsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lessons') List<PreviewLessonModel> previewLessons});
}

/// @nodoc
class _$PreviewLessonsModelCopyWithImpl<$Res, $Val extends PreviewLessonsModel>
    implements $PreviewLessonsModelCopyWith<$Res> {
  _$PreviewLessonsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previewLessons = null,
  }) {
    return _then(_value.copyWith(
      previewLessons: null == previewLessons
          ? _value.previewLessons
          : previewLessons // ignore: cast_nullable_to_non_nullable
              as List<PreviewLessonModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PreviewLessonsModelCopyWith<$Res>
    implements $PreviewLessonsModelCopyWith<$Res> {
  factory _$$_PreviewLessonsModelCopyWith(_$_PreviewLessonsModel value,
          $Res Function(_$_PreviewLessonsModel) then) =
      __$$_PreviewLessonsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lessons') List<PreviewLessonModel> previewLessons});
}

/// @nodoc
class __$$_PreviewLessonsModelCopyWithImpl<$Res>
    extends _$PreviewLessonsModelCopyWithImpl<$Res, _$_PreviewLessonsModel>
    implements _$$_PreviewLessonsModelCopyWith<$Res> {
  __$$_PreviewLessonsModelCopyWithImpl(_$_PreviewLessonsModel _value,
      $Res Function(_$_PreviewLessonsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previewLessons = null,
  }) {
    return _then(_$_PreviewLessonsModel(
      previewLessons: null == previewLessons
          ? _value._previewLessons
          : previewLessons // ignore: cast_nullable_to_non_nullable
              as List<PreviewLessonModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PreviewLessonsModel implements _PreviewLessonsModel {
  const _$_PreviewLessonsModel(
      {@JsonKey(name: 'lessons')
      required final List<PreviewLessonModel> previewLessons})
      : _previewLessons = previewLessons;

  factory _$_PreviewLessonsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PreviewLessonsModelFromJson(json);

  final List<PreviewLessonModel> _previewLessons;
  @override
  @JsonKey(name: 'lessons')
  List<PreviewLessonModel> get previewLessons {
    if (_previewLessons is EqualUnmodifiableListView) return _previewLessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previewLessons);
  }

  @override
  String toString() {
    return 'PreviewLessonsModel(previewLessons: $previewLessons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreviewLessonsModel &&
            const DeepCollectionEquality()
                .equals(other._previewLessons, _previewLessons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_previewLessons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreviewLessonsModelCopyWith<_$_PreviewLessonsModel> get copyWith =>
      __$$_PreviewLessonsModelCopyWithImpl<_$_PreviewLessonsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PreviewLessonsModelToJson(
      this,
    );
  }
}

abstract class _PreviewLessonsModel implements PreviewLessonsModel {
  const factory _PreviewLessonsModel(
          {@JsonKey(name: 'lessons')
          required final List<PreviewLessonModel> previewLessons}) =
      _$_PreviewLessonsModel;

  factory _PreviewLessonsModel.fromJson(Map<String, dynamic> json) =
      _$_PreviewLessonsModel.fromJson;

  @override
  @JsonKey(name: 'lessons')
  List<PreviewLessonModel> get previewLessons;
  @override
  @JsonKey(ignore: true)
  _$$_PreviewLessonsModelCopyWith<_$_PreviewLessonsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
