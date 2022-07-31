import 'package:world_news/src/core/utils/constant_value.dart';

class QueryParams{
  final String apiKey;
  final String? queryWord;
  final String endpoint;

  const QueryParams({
    required this.endpoint,
    this.apiKey = ConstantValue.kApiKey,
    this.queryWord,
  }
);

}