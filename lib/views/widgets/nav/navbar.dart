// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:pozadkey/views/widgets/buttons/home_button.dart';
import 'package:pozadkey/views/widgets/navbar_logo.dart';

import 'navbar_button.dart';

double collapsableHeight = 0.0;
Color selectedColor = Colors.yellow;
Color notSelected = Colors.white;
IconData myMenu = Icons.menu_rounded;

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final _navFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
      color: Colors.white,
      letterSpacing: 0.41,
      fontWeight: FontWeight.w500);

  final _navButtonFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      // color: Colors.grey[700],
      color: Color.fromARGB(241, 3, 26, 199),
      letterSpacing: 0.41,
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        AnimatedContainer(
          margin: EdgeInsets.only(top: 100.0),
          padding: EdgeInsets.only(bottom: 10),
          duration: Duration(milliseconds: 375),
          curve: Curves.ease,
          height: width < 1000.0 ? collapsableHeight : 0.0,
          width: double.infinity,
          color: Color.fromARGB(241, 3, 26, 199),
          child: Column(children: [
            MaterialButton(
              onPressed: () {
                setState(() {
                  collapsableHeight = 0.0;
                  myMenu = Icons.menu_rounded;
                });
                Navigator.pushNamed(context, '/');
              },
              child: Text(
                'Home',
                style: _navFont,
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  collapsableHeight = 0.0;
                  myMenu = Icons.menu_rounded;
                });
                Navigator.pushNamed(context, '/about');
              },
              child: Text(
                'About',
                style: _navFont,
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  collapsableHeight = 0.0;
                  myMenu = Icons.menu_rounded;
                });
                Navigator.pushNamed(context, '/contact');
              },
              child: Text(
                'Contact',
                style: _navFont,
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  collapsableHeight = 0.0;
                  myMenu = Icons.menu_rounded;
                });
                Navigator.pushNamed(context, '/contact');
              },
              child: Text(
                'Contact',
                style: _navFont,
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  collapsableHeight = 0.0;
                  myMenu = Icons.menu_rounded;
                });
                Navigator.pushNamed(context, '/contact');
              },
              child: Text(
                'Contact',
                style: _navFont,
              ),
            ),
            TextButton(
              child: Padding(
                padding: EdgeInsets.fromLTRB(1, 2, 1, 2),
                child: Text(
                  'Online Banking',
                  style: _navButtonFont,
                ),
              ),
              onPressed: () {
                setState(() {
                  collapsableHeight = 0.0;
                  myMenu = Icons.menu_rounded;
                });
                Navigator.pushNamed(context, '/login');
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0)),
              ),
            ),
          ]),
        ),
        Container(
          color: Color.fromARGB(255, 5, 3, 12),
          height: 100.0,
          padding: width < 1000
              ? EdgeInsets.fromLTRB(10, 15, 10, 0)
              : EdgeInsets.fromLTRB(100, 15, 100, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavLogo(),
              LayoutBuilder(builder: (context, constraints) {
                if (width < 1000.0) {
                  return NavBarButton(
                    onPressed: () {
                      if (collapsableHeight == 0.0) {
                        setState(() {
                          collapsableHeight = 500.0;
                          myMenu = Icons.cancel_sharp;
                        });
                      } else if (collapsableHeight == 500.0) {
                        setState(() {
                          collapsableHeight = 0.0;
                          myMenu = Icons.menu_rounded;
                        });
                      }
                    },
                  );
                } else {
                  return Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/');
                            },
                            child: Text(
                              'Home',
                              style: _navFont,
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/about');
                            },
                            child: Text(
                              'Projects',
                              style: _navFont,
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/contact');
                            },
                            child: Text(
                              'Résumé',
                              style: _navFont,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          HomeButton()
                        ]),
                  );
                }
              })
            ],
          ),
        )
      ],
    );
  }
}
