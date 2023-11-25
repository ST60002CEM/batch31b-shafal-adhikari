import 'package:flutter/material.dart';
import 'package:wandroz/routes.dart';
import 'package:wandroz/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Wandroz',
        debugShowCheckedModeBanner: false,
        routes: routes,
        initialRoute: '/splash',
        theme: theme());
  }
}
