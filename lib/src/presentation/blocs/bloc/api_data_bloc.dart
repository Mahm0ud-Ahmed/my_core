import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:world_news/injector.dart';
import 'package:world_news/src/core/error/error_model.dart';
import 'package:world_news/src/core/utils/data_state.dart';
import 'package:world_news/src/core/utils/query_params.dart';
import 'package:world_news/src/domain/use_cases/get_data_by_path_use_case.dart';
import 'package:world_news/src/domain/use_cases/get_single_data_use_case.dart';

import '../../../domain/use_cases/get_collection_data_use_case.dart';

part 'api_data_event.dart';
part 'api_data_state.dart';

class ApiDataBloc<MODEL> extends Bloc<ApiDataEvent, ApiDataState> {

  final GetSingleDataUseCase<MODEL> _getSingleDataUseCase = GetSingleDataUseCase(injector());
  final GetCollectionDataUseCase<MODEL> _getCollectionDataUseCase = GetCollectionDataUseCase(injector());
  final GetDataByPathUseCase<MODEL> _getDataByPathUseCase = GetDataByPathUseCase(injector());

  ApiDataBloc() : super(const ApiDataIdle()) {

    on<ApiDataSingle>((event, emit) => _getDataSingle(event, emit));
    on<ApiDataCollection>((event, emit) => _getDataCollection(event, emit));
  }

  Future<void> _getDataSingle(ApiDataSingle event, Emitter<ApiDataState> emit) async{
    emit(const ApiDataLoading());
    
    DataState state;
    if(event._queryParams.pathId != null && event._queryParams.pathId!.isNotEmpty){
      state = await _getDataByPathUseCase.call(params: event._queryParams);
    }else{
      state = await _getSingleDataUseCase.call(params: event._queryParams);
    }

    if(state is DataSuccess){
      emit(ApiDataLoaded<MODEL>(state.data));
    }else{
      emit(ApiDataError(state.error!));
    }
  }

  Future<void> _getDataCollection(ApiDataCollection event, Emitter<ApiDataState> emit) async{
    emit(const ApiDataLoading());
    DataState state = await _getCollectionDataUseCase.call(params: event._queryParams);

    if(state is DataSuccess){
      emit(ApiDataLoaded<List<MODEL>>(state.data));
    }else{
      emit(ApiDataError(state.error!));
    }
  }
}


