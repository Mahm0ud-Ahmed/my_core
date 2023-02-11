// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'api_pagination_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiPaginationModel<MODEL> {
  final int total;

  @JsonKey(name: 'per_page')
  final int perPage;

  @JsonKey(name: 'current_page')
  final int currentPage;

  @JsonKey(name: 'last_page')
  final int lastPage;

  // @JsonKey(name: 'first_page_url')
  // final String firstPageUrl;
  // @JsonKey(name: 'last_page_url')
  // final String lastPageUrl;
  // @JsonKey(name: 'next_page_url')
  // final String? nextPageUrl;
  // @JsonKey(name: 'prev_page_url')
  // final String? prevPageUrl;
  // final String path;
  final int? from;
  final int? to;
  final List<MODEL> data;
  
  const ApiPaginationModel({
    required this.total,
    required this.perPage,
    required this.currentPage,
    required this.lastPage,
    // required this.firstPageUrl,
    // required this.lastPageUrl,
    required this.data,
    // this.nextPageUrl,
    // this.prevPageUrl,
    // required this.path,
    this.from,
    this.to,
  });

  factory ApiPaginationModel.fromJson(
    Map<String, dynamic> json,
    MODEL Function(Object? json) fromJsonT,
  ) => _$ApiPaginationModelFromJson(json, fromJsonT);

}
