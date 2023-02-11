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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueryParams queryParams) index,
    required TResult Function(int id) show,
    required TResult Function(QueryParams queryParams) general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QueryParams queryParams)? index,
    TResult? Function(int id)? show,
    TResult? Function(QueryParams queryParams)? general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueryParams queryParams)? index,
    TResult Function(int id)? show,
    TResult Function(QueryParams queryParams)? general,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiIndexData value) index,
    required TResult Function(ApiShowData value) show,
    required TResult Function(ApiGeneralData value) general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiIndexData value)? index,
    TResult? Function(ApiShowData value)? show,
    TResult? Function(ApiGeneralData value)? general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiIndexData value)? index,
    TResult Function(ApiShowData value)? show,
    TResult Function(ApiGeneralData value)? general,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiDataEventCopyWith<$Res> {
  factory $ApiDataEventCopyWith(
          ApiDataEvent value, $Res Function(ApiDataEvent) then) =
      _$ApiDataEventCopyWithImpl<$Res, ApiDataEvent>;
}

/// @nodoc
class _$ApiDataEventCopyWithImpl<$Res, $Val extends ApiDataEvent>
    implements $ApiDataEventCopyWith<$Res> {
  _$ApiDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiIndexDataCopyWith<$Res> {
  factory _$$ApiIndexDataCopyWith(
          _$ApiIndexData value, $Res Function(_$ApiIndexData) then) =
      __$$ApiIndexDataCopyWithImpl<$Res>;
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
    required TResult Function(int id) show,
    required TResult Function(QueryParams queryParams) general,
  }) {
    return index(queryParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QueryParams queryParams)? index,
    TResult? Function(int id)? show,
    TResult? Function(QueryParams queryParams)? general,
  }) {
    return index?.call(queryParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueryParams queryParams)? index,
    TResult Function(int id)? show,
    TResult Function(QueryParams queryParams)? general,
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
    required TResult Function(ApiShowData value) show,
    required TResult Function(ApiGeneralData value) general,
  }) {
    return index(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiIndexData value)? index,
    TResult? Function(ApiShowData value)? show,
    TResult? Function(ApiGeneralData value)? general,
  }) {
    return index?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiIndexData value)? index,
    TResult Function(ApiShowData value)? show,
    TResult Function(ApiGeneralData value)? general,
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

  QueryParams get queryParams;
  @JsonKey(ignore: true)
  _$$ApiIndexDataCopyWith<_$ApiIndexData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiShowDataCopyWith<$Res> {
  factory _$$ApiShowDataCopyWith(
          _$ApiShowData value, $Res Function(_$ApiShowData) then) =
      __$$ApiShowDataCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ApiShowDataCopyWithImpl<$Res>
    extends _$ApiDataEventCopyWithImpl<$Res, _$ApiShowData>
    implements _$$ApiShowDataCopyWith<$Res> {
  __$$ApiShowDataCopyWithImpl(
      _$ApiShowData _value, $Res Function(_$ApiShowData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ApiShowData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ApiShowData implements ApiShowData {
  const _$ApiShowData({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ApiDataEvent.show(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiShowData &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiShowDataCopyWith<_$ApiShowData> get copyWith =>
      __$$ApiShowDataCopyWithImpl<_$ApiShowData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueryParams queryParams) index,
    required TResult Function(int id) show,
    required TResult Function(QueryParams queryParams) general,
  }) {
    return show(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QueryParams queryParams)? index,
    TResult? Function(int id)? show,
    TResult? Function(QueryParams queryParams)? general,
  }) {
    return show?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueryParams queryParams)? index,
    TResult Function(int id)? show,
    TResult Function(QueryParams queryParams)? general,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiIndexData value) index,
    required TResult Function(ApiShowData value) show,
    required TResult Function(ApiGeneralData value) general,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiIndexData value)? index,
    TResult? Function(ApiShowData value)? show,
    TResult? Function(ApiGeneralData value)? general,
  }) {
    return show?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiIndexData value)? index,
    TResult Function(ApiShowData value)? show,
    TResult Function(ApiGeneralData value)? general,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class ApiShowData implements ApiDataEvent {
  const factory ApiShowData({required final int id}) = _$ApiShowData;

  int get id;
  @JsonKey(ignore: true)
  _$$ApiShowDataCopyWith<_$ApiShowData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiGeneralDataCopyWith<$Res> {
  factory _$$ApiGeneralDataCopyWith(
          _$ApiGeneralData value, $Res Function(_$ApiGeneralData) then) =
      __$$ApiGeneralDataCopyWithImpl<$Res>;
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
    required TResult Function(int id) show,
    required TResult Function(QueryParams queryParams) general,
  }) {
    return general(queryParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QueryParams queryParams)? index,
    TResult? Function(int id)? show,
    TResult? Function(QueryParams queryParams)? general,
  }) {
    return general?.call(queryParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueryParams queryParams)? index,
    TResult Function(int id)? show,
    TResult Function(QueryParams queryParams)? general,
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
    required TResult Function(ApiShowData value) show,
    required TResult Function(ApiGeneralData value) general,
  }) {
    return general(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiIndexData value)? index,
    TResult? Function(ApiShowData value)? show,
    TResult? Function(ApiGeneralData value)? general,
  }) {
    return general?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiIndexData value)? index,
    TResult Function(ApiShowData value)? show,
    TResult Function(ApiGeneralData value)? general,
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

  QueryParams get queryParams;
  @JsonKey(ignore: true)
  _$$ApiGeneralDataCopyWith<_$ApiGeneralData> get copyWith =>
      throw _privateConstructorUsedError;
}
