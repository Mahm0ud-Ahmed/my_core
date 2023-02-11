// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Error _$ErrorFromJson(Map<String, dynamic> json) {
  return ErrorModel.fromJson(json);
}

/// @nodoc
mixin _$Error {
  bool? get status => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res, Error>;
  @useResult
  $Res call({bool? status, String? code, String? message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res, $Val extends Error>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorModelCopyWith<$Res> implements $ErrorCopyWith<$Res> {
  factory _$$ErrorModelCopyWith(
          _$ErrorModel value, $Res Function(_$ErrorModel) then) =
      __$$ErrorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, String? code, String? message});
}

/// @nodoc
class __$$ErrorModelCopyWithImpl<$Res>
    extends _$ErrorCopyWithImpl<$Res, _$ErrorModel>
    implements _$$ErrorModelCopyWith<$Res> {
  __$$ErrorModelCopyWithImpl(
      _$ErrorModel _value, $Res Function(_$ErrorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ErrorModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorModel implements ErrorModel {
  const _$ErrorModel({this.status, this.code, this.message});

  factory _$ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$$ErrorModelFromJson(json);

  @override
  final bool? status;
  @override
  final String? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'Error(status: $status, code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorModelCopyWith<_$ErrorModel> get copyWith =>
      __$$ErrorModelCopyWithImpl<_$ErrorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorModelToJson(
      this,
    );
  }
}

abstract class ErrorModel implements Error {
  const factory ErrorModel(
      {final bool? status,
      final String? code,
      final String? message}) = _$ErrorModel;

  factory ErrorModel.fromJson(Map<String, dynamic> json) =
      _$ErrorModel.fromJson;

  @override
  bool? get status;
  @override
  String? get code;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorModelCopyWith<_$ErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
