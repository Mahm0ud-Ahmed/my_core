import 'package:flutter/material.dart';

import '../../../presentation/screens/home/home_screen_page.dart';


class AppRoute {
  static Route generateRoute(RouteSettings route) {
    switch (route.name) {
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreenPage());
    }
  }
}