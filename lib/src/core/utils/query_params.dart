import 'package:world_news/src/core/utils/constant_value.dart';

class QueryParams{
  // final String? apiKey;
  final String endpoint;
  final String? pathId;
  final String? queryWord;
  // final String? sortBy;
  // final String? language;
  // final String? sources;
  // final String? searchIn;
  // final String? from;
  // final String? to;
  // final String? country;
  // final String? category;
  // final int? pageSize;
  // final int? page;

  const QueryParams({
    required this.endpoint,
    // this.apiKey = ConstantValue.kApiKey,
    this.pathId,
    this.queryWord,
    // this.sortBy,
    // this.language,
    // this.sources,
    // this.searchIn,
    // this.from,
    // this.to,
    // this.country,
    // this.category,
    // this.pageSize,
    // this.page,
  }
);

}