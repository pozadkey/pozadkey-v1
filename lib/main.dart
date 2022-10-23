// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'views/home_view/home_view.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                fontFamily: 'Gordita',
              ),
              title: 'Pozadkey - Software Engineer | Web & Mobile',
              initialRoute: '/',
              routes: <String, WidgetBuilder>{
                '/': (BuildContext context) => HomeView(),
                '/projects': (BuildContext context) => HomeView(),
                '/about': (BuildContext context) => HomeView(),
                '/contact': (BuildContext context) => HomeView(),
              });
        });
  }
}
