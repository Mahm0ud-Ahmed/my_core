// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_data_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiDataEvent {
  QueryParams get queryParams => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueryParams queryParams) index,
    required TResult Function(QueryParams queryParams) general,
    required TResult Function(QueryParams queryParams) store,
    required TResult Function(QueryParams queryParams) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QueryParams queryParams)? index,
    TResult? Function(QueryParams queryParams)? general,
    TResult? Function(QueryParams queryParams)? store,
    TResult? Function(QueryParams queryParams)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueryParams queryParams)? index,
    TResult Function(QueryParams queryParams)? general,
    TResult Function(QueryParams queryParams)? store,
    TResult Function(QueryParams queryParams)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiIndexData value) index,
    required TResult Function(ApiGeneralData value) general,
    required TResult Function(ApiStoreData value) store,
    required TResult Function(ApiUpdateData value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiIndexData value)? index,
    TResult? Function(ApiGeneralData value)? general,
    TResult? Function(ApiStoreData value)? store,
    TResult? Function(ApiUpdateData value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiIndexData value)? index,
    TResult Function(ApiGeneralData value)? general,
    TResult Function(ApiStoreData value)? store,
    TResult Function(ApiUpdateData value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiDataEventCopyWith<ApiDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiDataEventCopyWith<$Res> {
  factory $ApiDataEventCopyWith(
          ApiDataEvent value, $Res Function(ApiDataEvent) then) =
      _$ApiDataEventCopyWithImpl<$Res, ApiDataEvent>;
  @useResult
  $Res call({QueryParams queryParams});
}

/// @nodoc
class _$ApiDataEventCopyWithImpl<$Res, $Val extends ApiDataEvent>
    implements $ApiDataEventCopyWith<$Res> {
  _$ApiDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParams = null,
  }) {
    return _then(_value.copyWith(
      queryParams: null == queryParams
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiIndexDataCopyWith<$Res>
    implements $ApiDataEventCopyWith<$Res> {
  factory _$$ApiIndexDataCopyWith(
          _$ApiIndexData value, $Res Function(_$ApiIndexData) then) =
      __$$ApiIndexDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QueryParams queryParams});
}

/// @nodoc
class __$$ApiIndexDataCopyWithImpl<$Res>
    extends _$ApiDataEventCopyWithImpl<$Res, _$ApiIndexData>
    implements _$$ApiIndexDataCopyWith<$Res> {
  __$$ApiIndexDataCopyWithImpl(
      _$ApiIndexData _value, $Res Function(_$ApiIndexData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParams = null,
  }) {
    return _then(_$ApiIndexData(
      queryParams: null == queryParams
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
    ));
  }
}

/// @nodoc

class _$ApiIndexData implements ApiIndexData {
  const _$ApiIndexData({required this.queryParams});

  @override
  final QueryParams queryParams;

  @override
  String toString() {
    return 'ApiDataEvent.index(queryParams: $queryParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiIndexData &&
            (identical(other.queryParams, queryParams) ||
                other.queryParams == queryParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiIndexDataCopyWith<_$ApiIndexData> get copyWith =>
      __$$ApiIndexDataCopyWithImpl<_$ApiIndexData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueryParams queryParams) index,
    required TResult Function(QueryParams queryParams) general,
    required TResult Function(QueryParams queryParams) store,
    required TResult Function(QueryParams queryParams) update,
  }) {
    return index(queryParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QueryParams queryParams)? index,
    TResult? Function(QueryParams queryParams)? general,
    TResult? Function(QueryParams queryParams)? store,
    TResult? Function(QueryParams queryParams)? update,
  }) {
    return index?.call(queryParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueryParams queryParams)? index,
    TResult Function(QueryParams queryParams)? general,
    TResult Function(QueryParams queryParams)? store,
    TResult Function(QueryParams queryParams)? update,
    required TResult orElse(),
  }) {
    if (index != null) {
      return index(queryParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiIndexData value) index,
    required TResult Function(ApiGeneralData value) general,
    required TResult Function(ApiStoreData value) store,
    required TResult Function(ApiUpdateData value) update,
  }) {
    return index(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiIndexData value)? index,
    TResult? Function(ApiGeneralData value)? general,
    TResult? Function(ApiStoreData value)? store,
    TResult? Function(ApiUpdateData value)? update,
  }) {
    return index?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiIndexData value)? index,
    TResult Function(ApiGeneralData value)? general,
    TResult Function(ApiStoreData value)? store,
    TResult Function(ApiUpdateData value)? update,
    required TResult orElse(),
  }) {
    if (index != null) {
      return index(this);
    }
    return orElse();
  }
}

abstract class ApiIndexData implements ApiDataEvent {
  const factory ApiIndexData({required final QueryParams queryParams}) =
      _$ApiIndexData;

  @override
  QueryParams get queryParams;
  @override
  @JsonKey(ignore: true)
  _$$ApiIndexDataCopyWith<_$ApiIndexData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiGeneralDataCopyWith<$Res>
    implements $ApiDataEventCopyWith<$Res> {
  factory _$$ApiGeneralDataCopyWith(
          _$ApiGeneralData value, $Res Function(_$ApiGeneralData) then) =
      __$$ApiGeneralDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QueryParams queryParams});
}

/// @nodoc
class __$$ApiGeneralDataCopyWithImpl<$Res>
    extends _$ApiDataEventCopyWithImpl<$Res, _$ApiGeneralData>
    implements _$$ApiGeneralDataCopyWith<$Res> {
  __$$ApiGeneralDataCopyWithImpl(
      _$ApiGeneralData _value, $Res Function(_$ApiGeneralData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParams = null,
  }) {
    return _then(_$ApiGeneralData(
      queryParams: null == queryParams
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
    ));
  }
}

/// @nodoc

class _$ApiGeneralData implements ApiGeneralData {
  const _$ApiGeneralData({required this.queryParams});

  @override
  final QueryParams queryParams;

  @override
  String toString() {
    return 'ApiDataEvent.general(queryParams: $queryParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiGeneralData &&
            (identical(other.queryParams, queryParams) ||
                other.queryParams == queryParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiGeneralDataCopyWith<_$ApiGeneralData> get copyWith =>
      __$$ApiGeneralDataCopyWithImpl<_$ApiGeneralData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueryParams queryParams) index,
    required TResult Function(QueryParams queryParams) general,
    required TResult Function(QueryParams queryParams) store,
    required TResult Function(QueryParams queryParams) update,
  }) {
    return general(queryParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QueryParams queryParams)? index,
    TResult? Function(QueryParams queryParams)? general,
    TResult? Function(QueryParams queryParams)? store,
    TResult? Function(QueryParams queryParams)? update,
  }) {
    return general?.call(queryParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueryParams queryParams)? index,
    TResult Function(QueryParams queryParams)? general,
    TResult Function(QueryParams queryParams)? store,
    TResult Function(QueryParams queryParams)? update,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(queryParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiIndexData value) index,
    required TResult Function(ApiGeneralData value) general,
    required TResult Function(ApiStoreData value) store,
    required TResult Function(ApiUpdateData value) update,
  }) {
    return general(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiIndexData value)? index,
    TResult? Function(ApiGeneralData value)? general,
    TResult? Function(ApiStoreData value)? store,
    TResult? Function(ApiUpdateData value)? update,
  }) {
    return general?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiIndexData value)? index,
    TResult Function(ApiGeneralData value)? general,
    TResult Function(ApiStoreData value)? store,
    TResult Function(ApiUpdateData value)? update,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(this);
    }
    return orElse();
  }
}

abstract class ApiGeneralData implements ApiDataEvent {
  const factory ApiGeneralData({required final QueryParams queryParams}) =
      _$ApiGeneralData;

  @override
  QueryParams get queryParams;
  @override
  @JsonKey(ignore: true)
  _$$ApiGeneralDataCopyWith<_$ApiGeneralData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiStoreDataCopyWith<$Res>
    implements $ApiDataEventCopyWith<$Res> {
  factory _$$ApiStoreDataCopyWith(
          _$ApiStoreData value, $Res Function(_$ApiStoreData) then) =
      __$$ApiStoreDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QueryParams queryParams});
}

/// @nodoc
class __$$ApiStoreDataCopyWithImpl<$Res>
    extends _$ApiDataEventCopyWithImpl<$Res, _$ApiStoreData>
    implements _$$ApiStoreDataCopyWith<$Res> {
  __$$ApiStoreDataCopyWithImpl(
      _$ApiStoreData _value, $Res Function(_$ApiStoreData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParams = null,
  }) {
    return _then(_$ApiStoreData(
      queryParams: null == queryParams
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
    ));
  }
}

/// @nodoc

class _$ApiStoreData implements ApiStoreData {
  const _$ApiStoreData({required this.queryParams});

  @override
  final QueryParams queryParams;

  @override
  String toString() {
    return 'ApiDataEvent.store(queryParams: $queryParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiStoreData &&
            (identical(other.queryParams, queryParams) ||
                other.queryParams == queryParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiStoreDataCopyWith<_$ApiStoreData> get copyWith =>
      __$$ApiStoreDataCopyWithImpl<_$ApiStoreData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueryParams queryParams) index,
    required TResult Function(QueryParams queryParams) general,
    required TResult Function(QueryParams queryParams) store,
    required TResult Function(QueryParams queryParams) update,
  }) {
    return store(queryParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QueryParams queryParams)? index,
    TResult? Function(QueryParams queryParams)? general,
    TResult? Function(QueryParams queryParams)? store,
    TResult? Function(QueryParams queryParams)? update,
  }) {
    return store?.call(queryParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueryParams queryParams)? index,
    TResult Function(QueryParams queryParams)? general,
    TResult Function(QueryParams queryParams)? store,
    TResult Function(QueryParams queryParams)? update,
    required TResult orElse(),
  }) {
    if (store != null) {
      return store(queryParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiIndexData value) index,
    required TResult Function(ApiGeneralData value) general,
    required TResult Function(ApiStoreData value) store,
    required TResult Function(ApiUpdateData value) update,
  }) {
    return store(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiIndexData value)? index,
    TResult? Function(ApiGeneralData value)? general,
    TResult? Function(ApiStoreData value)? store,
    TResult? Function(ApiUpdateData value)? update,
  }) {
    return store?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiIndexData value)? index,
    TResult Function(ApiGeneralData value)? general,
    TResult Function(ApiStoreData value)? store,
    TResult Function(ApiUpdateData value)? update,
    required TResult orElse(),
  }) {
    if (store != null) {
      return store(this);
    }
    return orElse();
  }
}

abstract class ApiStoreData implements ApiDataEvent {
  const factory ApiStoreData({required final QueryParams queryParams}) =
      _$ApiStoreData;

  @override
  QueryParams get queryParams;
  @override
  @JsonKey(ignore: true)
  _$$ApiStoreDataCopyWith<_$ApiStoreData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiUpdateDataCopyWith<$Res>
    implements $ApiDataEventCopyWith<$Res> {
  factory _$$ApiUpdateDataCopyWith(
          _$ApiUpdateData value, $Res Function(_$ApiUpdateData) then) =
      __$$ApiUpdateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QueryParams queryParams});
}

/// @nodoc
class __$$ApiUpdateDataCopyWithImpl<$Res>
    extends _$ApiDataEventCopyWithImpl<$Res, _$ApiUpdateData>
    implements _$$ApiUpdateDataCopyWith<$Res> {
  __$$ApiUpdateDataCopyWithImpl(
      _$ApiUpdateData _value, $Res Function(_$ApiUpdateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParams = null,
  }) {
    return _then(_$ApiUpdateData(
      queryParams: null == queryParams
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
    ));
  }
}

/// @nodoc

class _$ApiUpdateData implements ApiUpdateData {
  const _$ApiUpdateData({required this.queryParams});

  @override
  final QueryParams queryParams;

  @override
  String toString() {
    return 'ApiDataEvent.update(queryParams: $queryParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiUpdateData &&
            (identical(other.queryParams, queryParams) ||
                other.queryParams == queryParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiUpdateDataCopyWith<_$ApiUpdateData> get copyWith =>
      __$$ApiUpdateDataCopyWithImpl<_$ApiUpdateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueryParams queryParams) index,
    required TResult Function(QueryParams queryParams) general,
    required TResult Function(QueryParams queryParams) store,
    required TResult Function(QueryParams queryParams) update,
  }) {
    return update(queryParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QueryParams queryParams)? index,
    TResult? Function(QueryParams queryParams)? general,
    TResult? Function(QueryParams queryParams)? store,
    TResult? Function(QueryParams queryParams)? update,
  }) {
    return update?.call(queryParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueryParams queryParams)? index,
    TResult Function(QueryParams queryParams)? general,
    TResult Function(QueryParams queryParams)? store,
    TResult Function(QueryParams queryParams)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(queryParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiIndexData value) index,
    required TResult Function(ApiGeneralData value) general,
    required TResult Function(ApiStoreData value) store,
    required TResult Function(ApiUpdateData value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiIndexData value)? index,
    TResult? Function(ApiGeneralData value)? general,
    TResult? Function(ApiStoreData value)? store,
    TResult? Function(ApiUpdateData value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiIndexData value)? index,
    TResult Function(ApiGeneralData value)? general,
    TResult Function(ApiStoreData value)? store,
    TResult Function(ApiUpdateData value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class ApiUpdateData implements ApiDataEvent {
  const factory ApiUpdateData({required final QueryParams queryParams}) =
      _$ApiUpdateData;

  @override
  QueryParams get queryParams;
  @override
  @JsonKey(ignore: true)
  _$$ApiUpdateDataCopyWith<_$ApiUpdateData> get copyWith =>
      throw _privateConstructorUsedError;
}
