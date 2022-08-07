part of 'api_data_bloc.dart';

abstract class ApiDataEvent extends Equatable {

  final QueryParams _queryParams;

  const ApiDataEvent(this._queryParams);

  @override
  List<Object> get props => [_queryParams];
}

class ApiDataCollection extends ApiDataEvent {

  const ApiDataCollection(QueryParams queryParams) : super(queryParams);
}

class ApiDataSingle extends ApiDataEvent {

  const ApiDataSingle(
    QueryParams queryParams
  ) : super(queryParams);

}