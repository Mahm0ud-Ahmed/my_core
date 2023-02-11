// ignore_for_file: public_member_api_docs, sort_constructors_first
// part of 'api_data_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/query_params.dart';

part 'api_data_event.freezed.dart';

@freezed
class ApiDataEvent with _$ApiDataEvent{

  const factory ApiDataEvent.index({required QueryParams queryParams}) = ApiIndexData;

  const factory ApiDataEvent.show({required int id}) = ApiShowData;

  const factory ApiDataEvent.general({required QueryParams queryParams}) = ApiGeneralData;

}