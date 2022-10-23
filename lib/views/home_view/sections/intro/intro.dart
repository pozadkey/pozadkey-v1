// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'intro_desktop.dart';
import 'intro_mobile.dart';

class Intro extends StatefulWidget {
  var projectsKey = GlobalKey();
  Intro({Key? key, required this.projectsKey}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width <= 1243) {
        return IntroMobile(
          projectsKey: widget.projectsKey,
        );
      } else {
        return IntroDesktop(
          projectsKey: widget.projectsKey,
        );
      }
    });
  }
}
