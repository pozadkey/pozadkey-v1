// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pozadkey/views/home_view/intro/intro.dart';
import 'package:pozadkey/views/widgets/footer/footer_desktop.dart';
import 'package:pozadkey/views/widgets/nav/navbar.dart';

import '../widgets/footer/footer.dart';
import '../widgets/nav/navbar_desktop.dart';
import 'intro/intro_desktop.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.landscape) {
        return Scaffold(
            backgroundColor: Color.fromARGB(255, 5, 3, 12),
            body: Column(
              children: [
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [NavBar(), Intro(), Footer()],
                      ),
                    ),
                  ),
                ),
              ],
            ));
      } else {
        return Scaffold(
            backgroundColor: Color.fromARGB(255, 5, 3, 12),
            body: Column(
              children: [
                NavBar(),
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [Intro(), Footer()],
                      ),
                    ),
                  ),
                ),
              ],
            ));
      }
    });
  }
}
