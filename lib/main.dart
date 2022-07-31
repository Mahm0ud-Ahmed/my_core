import 'package:flutter/material.dart';
import 'package:world_news/src/core/utils/query_params.dart';
import 'package:world_news/src/domain/use_cases/get_data_use_case.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'injector.dart';
import 'src/core/config/l10n/generated/l10n.dart';

void main() {
  initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  GetDataUseCase? usecase;

  void _incrementCounter() async {
    /* setState(() {
      _counter++;
    }); */
    usecase = GetDataUseCase(injector());
    final responce = await usecase!(params: const QueryParams(endpoint: 'everything', queryWord: 'bitcoin'));
    responce.fold((l){
      print('====>>>> ${l.message}');
      print('====>>>> ${l.status}');
    }, (r) {
      print(r.length);
    });
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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
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
