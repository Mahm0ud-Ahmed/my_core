class QueryParams {
  final String endpoint;
  String? userToken;
  // String? querySearch;
  Map<String, dynamic>? body;
  int? pageSize;
  int? page;
  int? resultCount;

  QueryParams({
    required this.endpoint,
    // this.querySearch,
    this.body,
    this.userToken,
    this.pageSize,
    this.page,
    this.resultCount,
  });
}
