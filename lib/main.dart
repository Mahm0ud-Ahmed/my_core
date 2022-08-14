import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:my_core/src/core/utils/query_params.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_core/src/presentation/blocs/api_data_bloc.dart';

import 'injector.dart';
import 'main.reflectable.dart';
import 'src/core/config/l10n/generated/l10n.dart';
import 'src/data/models/product_model.dart';

void main() {
  initializeReflectable();
  initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ApiDataBloc(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          localizationsDelegates: const [
            S.delegate,
            AppLocalizationDelegate(),
            GlobalWidgetsLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          home: MyHomePage(title: 'Flutter Demo Home Page'),
        ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  MyHomePage({Key? key, required this.title,}) : super(key: key);
  final String title;

  ApiDataBloc<ProductModel> dataBloc = ApiDataBloc();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // widget.dataBloc.add(ApiDataPagination(queryParams: QueryParams(endpoint: 'products', queryWord: 'L')));
    widget.dataBloc.query = QueryParams(endpoint: 'products/search', queryWord: 'La');
    super.initState();
  }

  void _incrementCounter() async {
    widget.dataBloc.add(ApiDataPagination());
  }

  @override
  Widget build(BuildContext context) {
    
    // print('================');
      return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: PagedListView(
          pagingController: widget.dataBloc.controller, 
          builderDelegate: PagedChildBuilderDelegate<ProductModel>(
            itemBuilder: (BuildContext context, ProductModel item, int index) {
              return SizedBox(
                height: 40,
                width: double.infinity,
                child: Text(item.id.toString())
              );
            },
            firstPageErrorIndicatorBuilder: (context) {
              return Text(widget.dataBloc.controller.error.message);
            },
            newPageErrorIndicatorBuilder: (context) {
              return Text('**************************');
            },
            
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
