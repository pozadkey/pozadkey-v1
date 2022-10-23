// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pozadkey/views/home_view/sections/about/about.dart';
import 'package:pozadkey/views/home_view/sections/contact/contact.dart';
import 'package:pozadkey/views/widgets/nav/navbar.dart';
import '../widgets/footer/footer.dart';

import 'sections/intro/intro.dart';
import 'sections/projects_info/projects_info.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final projectsKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.landscape) {
        return LayoutBuilder(
            builder: (context, constraints) => Scaffold(
                  backgroundColor: Colors.black,
                  body: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                                minHeight: constraints.maxHeight),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                NavBar(
                                  homeKey: homeKey,
                                  aboutKey: aboutKey,
                                  projectsKey: projectsKey,
                                ),
                                Intro(
                                  key: homeKey,
                                  projectsKey: projectsKey,
                                ),
                                About(
                                  key: aboutKey,
                                ),
                                ProjectsInfo(
                                  key: projectsKey,
                                ),
                                Contact(),
                                Footer(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ));
      } else {
        return LayoutBuilder(
            builder: (context, constraints) => Scaffold(
                  backgroundColor: Colors.black,
                  body: Column(
                    children: [
                      NavBar(
                        homeKey: homeKey,
                        aboutKey: aboutKey,
                        projectsKey: projectsKey,
                      ),
                      Expanded(
                        child: Center(
                          child: SingleChildScrollView(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                  minHeight: constraints.maxHeight),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(),
                                  Intro(
                                    key: homeKey,
                                    projectsKey: projectsKey,
                                  ),
                                  About(
                                    key: aboutKey,
                                  ),
                                  ProjectsInfo(
                                    key: projectsKey,
                                  ),
                                  Contact(),
                                  Footer()
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ));
      }
    });
  }
}
