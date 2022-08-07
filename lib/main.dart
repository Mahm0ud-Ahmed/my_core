import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:world_news/src/core/utils/query_params.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:world_news/src/presentation/blocs/api_data_bloc.dart';

import 'injector.dart';
import 'main.reflectable.dart';
import 'src/core/config/l10n/generated/l10n.dart';

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

  ApiDataBloc<Map> dataBloc = ApiDataBloc();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
  }

  void _incrementCounter() async {
    widget.dataBloc.add(const ApiDataSingle(QueryParams(endpoint: 'products', pathId: '1')));
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<ApiDataBloc, ApiDataState>(
              bloc: widget.dataBloc,
              builder: (context, state) {
                // print(state);
                if(state is ApiDataLoaded<Map>) {
                  return Text(
                  '${state.data}',
                );
                }else if(state is ApiDataError){
                  return Text(
                    '${state.error?.message}',
                  );
                }
                return CircularProgressIndicator();
              },
            ),
          ],
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
