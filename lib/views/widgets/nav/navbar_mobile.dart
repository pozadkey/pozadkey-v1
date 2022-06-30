// ignore_for_file: prefer_const_constructors
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../buttons/home_button.dart';

import '../buttons/navbar_button.dart';
import 'navbar_logo.dart';

IconData myMenu = Icons.menu_rounded;
double collapsableHeight = 0.0;

class NavBarMobile extends StatefulWidget {
  const NavBarMobile({Key? key}) : super(key: key);

  @override
  State<NavBarMobile> createState() => _NavBarMobileState();
}

class _NavBarMobileState extends State<NavBarMobile> {
  final _navFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      letterSpacing: 0.41,
      color: Colors.grey[350],
      fontWeight: FontWeight.w600);

  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: 80.0,
          padding: width <= 420
              ? EdgeInsets.fromLTRB(10, 5, 10, 5)
              : EdgeInsets.fromLTRB(30, 5, 30, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavLogo(),
              NavBarButton(onPressed: () {
                if (_isVisible == false) {
                  setState(() {
                    _isVisible = true;
                    myMenu = FontAwesomeIcons.xmark;
                  });
                } else if (_isVisible == true) {
                  setState(() {
                    _isVisible = false;
                    myMenu = FontAwesomeIcons.bars;
                  });
                }
              })
            ],
          ),
        ),
        Visibility(
            visible: _isVisible,
            child: AnimatedContainer(
              padding: EdgeInsets.all(40.0),
              duration: Duration(milliseconds: 375),
              curve: Curves.easeInOut,
              width: double.infinity,
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _isVisible = false;
                        myMenu = FontAwesomeIcons.bars;
                      });
                      Navigator.pushNamed(context, '/');
                    },
                    child: Text(
                      'Home',
                      style: _navFont,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _isVisible = false;
                        myMenu = FontAwesomeIcons.bars;
                      });
                      Navigator.pushNamed(context, '/projects');
                    },
                    child: Text(
                      'Projects',
                      style: _navFont,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _isVisible = false;
                        myMenu = FontAwesomeIcons.bars;
                      });
                      Navigator.pushNamed(context, '/resume');
                    },
                    child: Text(
                      'Résumé',
                      style: _navFont,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(width: 150, child: FittedBox(child: HomeButton()))
                ],
              ),
            ))
      ],
    );
  }
}
