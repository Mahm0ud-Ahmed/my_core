// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  List<Map<String, dynamic>>? get banners => throw _privateConstructorUsedError;
  List<ProductModel>? get products => throw _privateConstructorUsedError;
  String? get ad => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call(
      {List<Map<String, dynamic>>? banners,
      List<ProductModel>? products,
      String? ad});
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = freezed,
    Object? products = freezed,
    Object? ad = freezed,
  }) {
    return _then(_value.copyWith(
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      ad: freezed == ad
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$$_HomeModelCopyWith(
          _$_HomeModel value, $Res Function(_$_HomeModel) then) =
      __$$_HomeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Map<String, dynamic>>? banners,
      List<ProductModel>? products,
      String? ad});
}

/// @nodoc
class __$$_HomeModelCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$_HomeModel>
    implements _$$_HomeModelCopyWith<$Res> {
  __$$_HomeModelCopyWithImpl(
      _$_HomeModel _value, $Res Function(_$_HomeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = freezed,
    Object? products = freezed,
    Object? ad = freezed,
  }) {
    return _then(_$_HomeModel(
      banners: freezed == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      ad: freezed == ad
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeModel implements _HomeModel {
  const _$_HomeModel(
      {final List<Map<String, dynamic>>? banners,
      final List<ProductModel>? products,
      this.ad})
      : _banners = banners,
        _products = products;

  factory _$_HomeModel.fromJson(Map<String, dynamic> json) =>
      _$$_HomeModelFromJson(json);

  final List<Map<String, dynamic>>? _banners;
  @override
  List<Map<String, dynamic>>? get banners {
    final value = _banners;
    if (value == null) return null;
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductModel>? _products;
  @override
  List<ProductModel>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? ad;

  @override
  String toString() {
    return 'HomeModel(banners: $banners, products: $products, ad: $ad)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeModel &&
            const DeepCollectionEquality().equals(other._banners, _banners) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.ad, ad) || other.ad == ad));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_banners),
      const DeepCollectionEquality().hash(_products),
      ad);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      __$$_HomeModelCopyWithImpl<_$_HomeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeModelToJson(
      this,
    );
  }
}

abstract class _HomeModel implements HomeModel {
  const factory _HomeModel(
      {final List<Map<String, dynamic>>? banners,
      final List<ProductModel>? products,
      final String? ad}) = _$_HomeModel;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$_HomeModel.fromJson;

  @override
  List<Map<String, dynamic>>? get banners;
  @override
  List<ProductModel>? get products;
  @override
  String? get ad;
  @override
  @JsonKey(ignore: true)
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
