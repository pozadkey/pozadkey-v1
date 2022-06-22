// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pozadkey/views/widgets/footer/footer_desktop.dart';
import 'package:pozadkey/views/widgets/intro/intro_desktop.dart';
import 'package:pozadkey/views/widgets/nav/navbar.dart';

class HomeViewDesktop extends StatefulWidget {
  const HomeViewDesktop({Key? key}) : super(key: key);

  @override
  State<HomeViewDesktop> createState() => _HomeViewDesktopState();
}

class _HomeViewDesktopState extends State<HomeViewDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 5, 3, 12),
        body: Column(
          children: [
            NavBar(),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [IntroDesktop(), FooterDesktop()],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
