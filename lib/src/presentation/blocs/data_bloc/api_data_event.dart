// ignore_for_file: public_member_api_docs, sort_constructors_first
// part of 'api_data_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/query_params.dart';

part 'api_data_event.freezed.dart';

@freezed
class ApiDataEvent with _$ApiDataEvent{

  /// Used to get data from type Pagination and if data is List but not Pagination
  const factory ApiDataEvent.index({required QueryParams queryParams}) = ApiIndexData;

  // const factory ApiDataEvent.show({required int id}) = ApiShowData;

  /// Used to get data from type Object [Map]
  const factory ApiDataEvent.general({required QueryParams queryParams}) = ApiGeneralData;

  const factory ApiDataEvent.store({required QueryParams queryParams}) = ApiStoreData;

  const factory ApiDataEvent.update({required QueryParams queryParams}) = ApiUpdateData;

}