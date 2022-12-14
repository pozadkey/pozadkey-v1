// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'navbar_desktop.dart';
import 'navbar_mobile.dart';

class NavBar extends StatefulWidget {
  var homeKey = GlobalKey();
  var aboutKey = GlobalKey();
  var projectsKey = GlobalKey();
  NavBar(
      {Key? key,
      required this.homeKey,
      required this.aboutKey,
      required this.projectsKey})
      : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width <= 1243) {
        return NavBarMobile(
          homeKey: widget.homeKey,
          aboutKey: widget.aboutKey,
          projectsKey: widget.projectsKey,
        );
      } else {
        return NavBarDesktop(
          homeKey: widget.homeKey,
          aboutKey: widget.aboutKey,
          projectsKey: widget.projectsKey,
        );
      }
    });
  }
}
