import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_core/src/presentation/screens/home/home_screen_page.dart';

import '../injector.dart';
class AppRoute {

  static GoRouter? _router;

  static GoRouter _generateRoute(){
    return _router = GoRouter(
      navigatorKey: injector<GlobalKey<NavigatorState>>(),
      debugLogDiagnostics: kDebugMode,
      initialLocation: '/',
      errorBuilder: (context, state) => SizedBox.shrink(),
      routes: _routes
      
    );
  }

  GoRouter get route => _router!;

  static final List<RouteBase> _routes = [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreenPage(),
    ),
  ];

  AppRoute.init();
  static AppRoute? _instance;
  factory AppRoute() {
    _router = _generateRoute();
    return _instance ??= AppRoute.init();
  }

  /* static Route generateRoute(RouteSettings route) {
    switch (route.name) {
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreenPage());
    }
  } */


}