// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pozadkey/views/home_view/intro/intro_tab.dart';
import 'package:pozadkey/views/widgets/nav/navbar_desktop.dart';
import 'navbar_mobile.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width <= 420) {
        return NavBarMobile();
      } else if (width > 421 && width <= 1199) {
        return NavBarMobile();
      } else {
        return NavBarDesktop();
      }
    });
  }
}
