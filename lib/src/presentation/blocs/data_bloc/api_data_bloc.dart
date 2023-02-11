import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:my_core/src/data/models/api_response_model.dart';

import '../../../core/config/injector.dart';
import '../../../core/utils/data_state.dart';
import '../../../core/utils/query_params.dart';
import '../../../data/models/api_pagination_model.dart';
import '../../../domain/use_cases/get_general_data_use_case.dart';
import '../../../domain/use_cases/get_index_data_use_case.dart';
import '../../../domain/use_cases/get_list_data_use_case.dart';
import 'api_data_event.dart';
import 'api_data_state.dart';

class ApiDataBloc<MODEL> extends Bloc<ApiDataEvent, ApiDataState> {
  final GetGeneralDataUseCase<MODEL> _getGeneralDataUseCase = GetGeneralDataUseCase(injector());
  final GetIndexDataUseCase<MODEL> _getIndexDataUseCase = GetIndexDataUseCase(injector());
  final GetListDataUseCase<MODEL> _getListDataUseCase = GetListDataUseCase(injector());
  
  PagingController<int, MODEL>? controller;
  QueryParams? query;
  final bool withoutPagination;

  ApiDataBloc({this.query, this.withoutPagination = false}) : super(const ApiDataIdle()) {
    on<ApiGeneralData>((event, emit) => _getGeneralData(event, emit));
    on<ApiIndexData>((event, emit) {
      query ??= event.queryParams;
      if(withoutPagination){
        return _getDataWithoutPagination(event, emit);
      }
      return _getIndexData(event, emit);
    });
    if(query != null) {
      _initializeController();
    }
  }

  void _initializeController() {
    controller = PagingController<int, MODEL>(
      firstPageKey: query?.page ?? 1,
      invisibleItemsThreshold: query?.pageSize,
    );
    controller?.removePageRequestListener(_fetchData);
    controller?.addPageRequestListener(_fetchData);
  }

  void _fetchData(int pageKey) {
    query?.page = pageKey;
    if (!isClosed) {
      add(ApiIndexData(queryParams: query!));
    }
  }

  void newSettingForPagination(ApiPaginationModel<MODEL> pagination) {
    query?.page = (query!.page!) + 1;
    bool noMore = noMoreData(pagination);
    if (noMore) {
      controller?.appendLastPage(pagination.data);
    } else {
      controller?.appendPage(pagination.data, query?.page);
    }
  }

  bool noMoreData(ApiPaginationModel<MODEL> pagination) {
    if (controller?.itemList != null) {
      return query?.resultCount == null
          ? controller!.itemList!.length >= pagination.total || query?.pageSize != pagination.data.length
          : pagination.total > query!.resultCount!
              ? controller!.itemList!.length >= query!.resultCount!
              : controller!.itemList!.length >= pagination.total;
    } else {
      return pagination.total <= query!.pageSize! ? true : false;
    }
  }
  
  Future<void> _getGeneralData(ApiGeneralData event, Emitter<ApiDataState> emit) async{
    emit(ApiDataLoading(event: event));
    final DataState<ApiResponseModel<MODEL>> dataState = await _getGeneralDataUseCase(event.queryParams);
    dataState.when(
      success: (successState) {
        emit(ApiDataLoaded<MODEL>(data: successState?.data, response: successState!, event: event));
      }, 
      failure: (errorState) {
        emit(ApiDataError<MODEL>(error: errorState, event: event));
      },
    );
  }
  
  Future<void> _getIndexData(ApiIndexData event, Emitter<ApiDataState> emit) async {
    emit(ApiDataLoading(event: event));
    final DataState<ApiResponseModel<ApiPaginationModel<MODEL>>> dataState = await _getIndexDataUseCase(event.queryParams);
    dataState.when(
      success: (successState) {
        emit(ApiDataLoaded<ApiPaginationModel<MODEL>>(data: successState?.data, response: successState!, event: event));
        if(controller != null){
          newSettingForPagination(successState.data);
        }
      }, 
      failure: (errorState) {
        emit(ApiDataError<MODEL>(error: errorState, event: event));
      },
    );
  }

  Future<void> _getDataWithoutPagination(ApiIndexData event, Emitter<ApiDataState> emit) async{
    emit(ApiDataLoading(event: event));
    final DataState<ApiResponseModel<List<MODEL>>> dataState = await _getListDataUseCase(event.queryParams);
    dataState.when(
      success: (successState) {
        emit(ApiDataLoaded<List<MODEL>>(data: successState?.data, response: successState!, event: event));
      }, 
      failure: (errorState) {
        emit(ApiDataError<MODEL>(error: errorState, event: event));
      },
    );
  }

  @override
  Future<void> close() {
    controller?.dispose();
    return super.close();
  }
}
