import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_core/src/presentation/blocs/data_bloc/api_data_event.dart';

import '../../../core/utils/query_params.dart';
import '../../blocs/data_bloc/api_data_bloc.dart';
import '../../blocs/data_bloc/api_data_state.dart';


class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  // static String path = 'https://student.valuxapps.com/api/home';
  static String path = '/categories';
  // static String path = '/chat/chat_message?with=';
  final QueryParams _query = QueryParams(
    endpoint: path,
  );

  late final ApiDataBloc _testBloc;

  @override
  void initState() {
    super.initState();
    // _testBloc = ApiDataBloc<MessageModel>()..add(ApiIndexData(queryParams: _query));
    _testBloc = ApiDataBloc(withoutPagination: true)..add(ApiIndexData(queryParams: _query));
  }

  @override
  Widget build(BuildContext context) {
    /* return Scaffold(
      body: PagedListView(
        pagingController: _testBloc.controller!,
        builderDelegate: PagedChildBuilderDelegate<MessageModel>(
          itemBuilder: (context, item, index) {
            return Text('${index +1} ==>> ${item.message.toString()}');
          },
        ),
      ),
    ); */
    return BlocBuilder(
      bloc: _testBloc,
      builder: (context, ApiDataState state) {
        List data = [];
        if(state is ApiDataSuccess){
          data = state.data!;
        }
        return Scaffold(
          body: Center(
            child: Text(
              '${data.length}',
            ),
          ),
          appBar: AppBar(),
          floatingActionButton: FloatingActionButton(onPressed: () async{
            
            // print(jsonEncode(_art.toMap()));
            // await StorageService().saveBool('mode', true);
            // SettingService().changeThemeMode(DarkTheme());
          }),
        );
      },
    );
  }
}