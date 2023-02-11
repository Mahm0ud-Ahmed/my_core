class QueryParams {
  final String endpoint;
  dynamic path;
  String? userToken;
  String? apiKey;
  String? querySearch;
  Map<String, dynamic>? body;
  int? pageSize;
  int? page;
  int? resultCount;

  QueryParams({
    required this.endpoint,
    this.apiKey,
    this.querySearch,
    this.path,
    this.body,
    this.userToken,
    this.pageSize,
    this.page,
    this.resultCount,
  });
}
