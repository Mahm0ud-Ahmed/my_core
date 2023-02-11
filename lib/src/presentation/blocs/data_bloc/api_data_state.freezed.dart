// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiDataState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(ApiDataEvent event) loading,
    required TResult Function(
            T? data, ApiResponseModel<T?> response, ApiDataEvent event)
        loaded,
    required TResult Function(Error? error, ApiDataEvent event) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(ApiDataEvent event)? loading,
    TResult? Function(
            T? data, ApiResponseModel<T?> response, ApiDataEvent event)?
        loaded,
    TResult? Function(Error? error, ApiDataEvent event)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(ApiDataEvent event)? loading,
    TResult Function(
            T? data, ApiResponseModel<T?> response, ApiDataEvent event)?
        loaded,
    TResult Function(Error? error, ApiDataEvent event)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiDataIdle<T> value) idle,
    required TResult Function(ApiDataLoading<T> value) loading,
    required TResult Function(ApiDataLoaded<T> value) loaded,
    required TResult Function(ApiDataError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiDataIdle<T> value)? idle,
    TResult? Function(ApiDataLoading<T> value)? loading,
    TResult? Function(ApiDataLoaded<T> value)? loaded,
    TResult? Function(ApiDataError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiDataIdle<T> value)? idle,
    TResult Function(ApiDataLoading<T> value)? loading,
    TResult Function(ApiDataLoaded<T> value)? loaded,
    TResult Function(ApiDataError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiDataStateCopyWith<T, $Res> {
  factory $ApiDataStateCopyWith(
          ApiDataState<T> value, $Res Function(ApiDataState<T>) then) =
      _$ApiDataStateCopyWithImpl<T, $Res, ApiDataState<T>>;
}

/// @nodoc
class _$ApiDataStateCopyWithImpl<T, $Res, $Val extends ApiDataState<T>>
    implements $ApiDataStateCopyWith<T, $Res> {
  _$ApiDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiDataIdleCopyWith<T, $Res> {
  factory _$$ApiDataIdleCopyWith(
          _$ApiDataIdle<T> value, $Res Function(_$ApiDataIdle<T>) then) =
      __$$ApiDataIdleCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ApiDataIdleCopyWithImpl<T, $Res>
    extends _$ApiDataStateCopyWithImpl<T, $Res, _$ApiDataIdle<T>>
    implements _$$ApiDataIdleCopyWith<T, $Res> {
  __$$ApiDataIdleCopyWithImpl(
      _$ApiDataIdle<T> _value, $Res Function(_$ApiDataIdle<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApiDataIdle<T> implements ApiDataIdle<T> {
  const _$ApiDataIdle();

  @override
  String toString() {
    return 'ApiDataState<$T>.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApiDataIdle<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(ApiDataEvent event) loading,
    required TResult Function(
            T? data, ApiResponseModel<T?> response, ApiDataEvent event)
        loaded,
    required TResult Function(Error? error, ApiDataEvent event) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(ApiDataEvent event)? loading,
    TResult? Function(
            T? data, ApiResponseModel<T?> response, ApiDataEvent event)?
        loaded,
    TResult? Function(Error? error, ApiDataEvent event)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(ApiDataEvent event)? loading,
    TResult Function(
            T? data, ApiResponseModel<T?> response, ApiDataEvent event)?
        loaded,
    TResult Function(Error? error, ApiDataEvent event)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiDataIdle<T> value) idle,
    required TResult Function(ApiDataLoading<T> value) loading,
    required TResult Function(ApiDataLoaded<T> value) loaded,
    required TResult Function(ApiDataError<T> value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiDataIdle<T> value)? idle,
    TResult? Function(ApiDataLoading<T> value)? loading,
    TResult? Function(ApiDataLoaded<T> value)? loaded,
    TResult? Function(ApiDataError<T> value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiDataIdle<T> value)? idle,
    TResult Function(ApiDataLoading<T> value)? loading,
    TResult Function(ApiDataLoaded<T> value)? loaded,
    TResult Function(ApiDataError<T> value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class ApiDataIdle<T> implements ApiDataState<T> {
  const factory ApiDataIdle() = _$ApiDataIdle<T>;
}

/// @nodoc
abstract class _$$ApiDataLoadingCopyWith<T, $Res> {
  factory _$$ApiDataLoadingCopyWith(
          _$ApiDataLoading<T> value, $Res Function(_$ApiDataLoading<T>) then) =
      __$$ApiDataLoadingCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiDataEvent event});

  $ApiDataEventCopyWith<$Res> get event;
}

/// @nodoc
class __$$ApiDataLoadingCopyWithImpl<T, $Res>
    extends _$ApiDataStateCopyWithImpl<T, $Res, _$ApiDataLoading<T>>
    implements _$$ApiDataLoadingCopyWith<T, $Res> {
  __$$ApiDataLoadingCopyWithImpl(
      _$ApiDataLoading<T> _value, $Res Function(_$ApiDataLoading<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$ApiDataLoading<T>(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as ApiDataEvent,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiDataEventCopyWith<$Res> get event {
    return $ApiDataEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$ApiDataLoading<T> implements ApiDataLoading<T> {
  const _$ApiDataLoading({required this.event});

  @override
  final ApiDataEvent event;

  @override
  String toString() {
    return 'ApiDataState<$T>.loading(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiDataLoading<T> &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiDataLoadingCopyWith<T, _$ApiDataLoading<T>> get copyWith =>
      __$$ApiDataLoadingCopyWithImpl<T, _$ApiDataLoading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(ApiDataEvent event) loading,
    required TResult Function(
            T? data, ApiResponseModel<T?> response, ApiDataEvent event)
        loaded,
    required TResult Function(Error? error, ApiDataEvent event) error,
  }) {
    return loading(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(ApiDataEvent event)? loading,
    TResult? Function(
            T? data, ApiResponseModel<T?> response, ApiDataEvent event)?
        loaded,
    TResult? Function(Error? error, ApiDataEvent event)? error,
  }) {
    return loading?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(ApiDataEvent event)? loading,
    TResult Function(
            T? data, ApiResponseModel<T?> response, ApiDataEvent event)?
        loaded,
    TResult Function(Error? error, ApiDataEvent event)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiDataIdle<T> value) idle,
    required TResult Function(ApiDataLoading<T> value) loading,
    required TResult Function(ApiDataLoaded<T> value) loaded,
    required TResult Function(ApiDataError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiDataIdle<T> value)? idle,
    TResult? Function(ApiDataLoading<T> value)? loading,
    TResult? Function(ApiDataLoaded<T> value)? loaded,
    TResult? Function(ApiDataError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiDataIdle<T> value)? idle,
    TResult Function(ApiDataLoading<T> value)? loading,
    TResult Function(ApiDataLoaded<T> value)? loaded,
    TResult Function(ApiDataError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ApiDataLoading<T> implements ApiDataState<T> {
  const factory ApiDataLoading({required final ApiDataEvent event}) =
      _$ApiDataLoading<T>;

  ApiDataEvent get event;
  @JsonKey(ignore: true)
  _$$ApiDataLoadingCopyWith<T, _$ApiDataLoading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiDataLoadedCopyWith<T, $Res> {
  factory _$$ApiDataLoadedCopyWith(
          _$ApiDataLoaded<T> value, $Res Function(_$ApiDataLoaded<T>) then) =
      __$$ApiDataLoadedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data, ApiResponseModel<T?> response, ApiDataEvent event});

  $ApiDataEventCopyWith<$Res> get event;
}

/// @nodoc
class __$$ApiDataLoadedCopyWithImpl<T, $Res>
    extends _$ApiDataStateCopyWithImpl<T, $Res, _$ApiDataLoaded<T>>
    implements _$$ApiDataLoadedCopyWith<T, $Res> {
  __$$ApiDataLoadedCopyWithImpl(
      _$ApiDataLoaded<T> _value, $Res Function(_$ApiDataLoaded<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? response = null,
    Object? event = null,
  }) {
    return _then(_$ApiDataLoaded<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ApiResponseModel<T?>,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as ApiDataEvent,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiDataEventCopyWith<$Res> get event {
    return $ApiDataEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$ApiDataLoaded<T> implements ApiDataLoaded<T> {
  const _$ApiDataLoaded(
      {required this.data, required this.response, required this.event});

  @override
  final T? data;
  @override
  final ApiResponseModel<T?> response;
  @override
  final ApiDataEvent event;

  @override
  String toString() {
    return 'ApiDataState<$T>.loaded(data: $data, response: $response, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiDataLoaded<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), response, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiDataLoadedCopyWith<T, _$ApiDataLoaded<T>> get copyWith =>
      __$$ApiDataLoadedCopyWithImpl<T, _$ApiDataLoaded<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(ApiDataEvent event) loading,
    required TResult Function(
            T? data, ApiResponseModel<T?> response, ApiDataEvent event)
        loaded,
    required TResult Function(Error? error, ApiDataEvent event) error,
  }) {
    return loaded(data, response, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(ApiDataEvent event)? loading,
    TResult? Function(
            T? data, ApiResponseModel<T?> response, ApiDataEvent event)?
        loaded,
    TResult? Function(Error? error, ApiDataEvent event)? error,
  }) {
    return loaded?.call(data, response, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(ApiDataEvent event)? loading,
    TResult Function(
            T? data, ApiResponseModel<T?> response, ApiDataEvent event)?
        loaded,
    TResult Function(Error? error, ApiDataEvent event)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data, response, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiDataIdle<T> value) idle,
    required TResult Function(ApiDataLoading<T> value) loading,
    required TResult Function(ApiDataLoaded<T> value) loaded,
    required TResult Function(ApiDataError<T> value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiDataIdle<T> value)? idle,
    TResult? Function(ApiDataLoading<T> value)? loading,
    TResult? Function(ApiDataLoaded<T> value)? loaded,
    TResult? Function(ApiDataError<T> value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiDataIdle<T> value)? idle,
    TResult Function(ApiDataLoading<T> value)? loading,
    TResult Function(ApiDataLoaded<T> value)? loaded,
    TResult Function(ApiDataError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ApiDataLoaded<T> implements ApiDataState<T> {
  const factory ApiDataLoaded(
      {required final T? data,
      required final ApiResponseModel<T?> response,
      required final ApiDataEvent event}) = _$ApiDataLoaded<T>;

  T? get data;
  ApiResponseModel<T?> get response;
  ApiDataEvent get event;
  @JsonKey(ignore: true)
  _$$ApiDataLoadedCopyWith<T, _$ApiDataLoaded<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiDataErrorCopyWith<T, $Res> {
  factory _$$ApiDataErrorCopyWith(
          _$ApiDataError<T> value, $Res Function(_$ApiDataError<T>) then) =
      __$$ApiDataErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Error? error, ApiDataEvent event});

  $ErrorCopyWith<$Res>? get error;
  $ApiDataEventCopyWith<$Res> get event;
}

/// @nodoc
class __$$ApiDataErrorCopyWithImpl<T, $Res>
    extends _$ApiDataStateCopyWithImpl<T, $Res, _$ApiDataError<T>>
    implements _$$ApiDataErrorCopyWith<T, $Res> {
  __$$ApiDataErrorCopyWithImpl(
      _$ApiDataError<T> _value, $Res Function(_$ApiDataError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? event = null,
  }) {
    return _then(_$ApiDataError<T>(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as ApiDataEvent,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiDataEventCopyWith<$Res> get event {
    return $ApiDataEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$ApiDataError<T> implements ApiDataError<T> {
  const _$ApiDataError({required this.error, required this.event});

  @override
  final Error? error;
  @override
  final ApiDataEvent event;

  @override
  String toString() {
    return 'ApiDataState<$T>.error(error: $error, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiDataError<T> &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiDataErrorCopyWith<T, _$ApiDataError<T>> get copyWith =>
      __$$ApiDataErrorCopyWithImpl<T, _$ApiDataError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(ApiDataEvent event) loading,
    required TResult Function(
            T? data, ApiResponseModel<T?> response, ApiDataEvent event)
        loaded,
    required TResult Function(Error? error, ApiDataEvent event) error,
  }) {
    return error(this.error, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(ApiDataEvent event)? loading,
    TResult? Function(
            T? data, ApiResponseModel<T?> response, ApiDataEvent event)?
        loaded,
    TResult? Function(Error? error, ApiDataEvent event)? error,
  }) {
    return error?.call(this.error, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(ApiDataEvent event)? loading,
    TResult Function(
            T? data, ApiResponseModel<T?> response, ApiDataEvent event)?
        loaded,
    TResult Function(Error? error, ApiDataEvent event)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiDataIdle<T> value) idle,
    required TResult Function(ApiDataLoading<T> value) loading,
    required TResult Function(ApiDataLoaded<T> value) loaded,
    required TResult Function(ApiDataError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiDataIdle<T> value)? idle,
    TResult? Function(ApiDataLoading<T> value)? loading,
    TResult? Function(ApiDataLoaded<T> value)? loaded,
    TResult? Function(ApiDataError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiDataIdle<T> value)? idle,
    TResult Function(ApiDataLoading<T> value)? loading,
    TResult Function(ApiDataLoaded<T> value)? loaded,
    TResult Function(ApiDataError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ApiDataError<T> implements ApiDataState<T> {
  const factory ApiDataError(
      {required final Error? error,
      required final ApiDataEvent event}) = _$ApiDataError<T>;

  Error? get error;
  ApiDataEvent get event;
  @JsonKey(ignore: true)
  _$$ApiDataErrorCopyWith<T, _$ApiDataError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
