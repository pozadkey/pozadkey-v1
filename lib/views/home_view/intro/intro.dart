// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pozadkey/views/home_view/intro/intro_tab.dart';

import 'intro_desktop.dart';
import 'intro_mobile.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width <= 420) {
        return IntroMobile();
      } else if (width > 421 && width <= 1199) {
        return IntroTab();
      } else {
        return IntroDesktop();
      }
    });
  }
}
