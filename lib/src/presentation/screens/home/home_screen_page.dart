import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../core/utils/enums.dart';
import '../../../core/utils/query_params.dart';
import '../../../data/models/article_model.dart';
import '../../blocs/data_bloc/api_data_bloc.dart';


class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  final QueryParams _query = QueryParams(
    category: NewsCategory.business.category,
    pageSize: 10,
  );

  late final ApiDataBloc<ArticleModel> _articleBloc;

  @override
  void initState() {
    super.initState();
    _articleBloc = ApiDataBloc<ArticleModel>(maxResult: 10, query: _query);
  }

  @override
  Widget build(BuildContext context) {
    late ArticleModel _art;
    return Scaffold(
      appBar: AppBar(),
      body: PagedListView(
        pagingController: _articleBloc.controller, 
        builderDelegate: PagedChildBuilderDelegate<ArticleModel>(
          itemBuilder: (context, item, index) {
            _art = item;
            return Text(item.content ?? '');
          },
        )
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async{
        print(jsonEncode(_art.toMap()));
        // await StorageService().saveBool('mode', true);
        // SettingService().changeThemeMode(DarkTheme());
      }),
    );
  }
}