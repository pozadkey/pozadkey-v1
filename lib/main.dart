// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'views/home_view/home_view_desktop.dart';

void main() {
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
                fontFamily: 'Poppins',
              ),
              title: 'Pozadkey - Software Engineer | Web & Mobile',
              home: HomeViewDesktop(),
              routes: <String, WidgetBuilder>{
                'home': (BuildContext context) => HomeViewDesktop(),
              });
        });
  }
}
