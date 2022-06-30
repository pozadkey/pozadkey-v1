// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pozadkey/views/widgets/nav/navbar_logo.dart';

import '../buttons/home_button.dart';

class NavBarDesktop extends StatefulWidget {
  const NavBarDesktop({Key? key}) : super(key: key);

  @override
  State<NavBarDesktop> createState() => _NavBarDesktopState();
}

class _NavBarDesktopState extends State<NavBarDesktop> {
  final _navFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      letterSpacing: 0.41,
      color: Colors.grey[350],
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavLogo(),
          Row(children: [
            MaterialButton(
              hoverColor: Color.fromARGB(235, 255, 153, 0),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text(
                'Home',
                style: _navFont,
              ),
            ),
            MaterialButton(
              hoverColor: Color.fromARGB(235, 255, 153, 0),
              onPressed: () {
                Navigator.pushNamed(context, '/projects');
              },
              child: Text(
                'Projects',
                style: _navFont,
              ),
            ),
            MaterialButton(
              hoverColor: Color.fromARGB(235, 255, 153, 0),
              onPressed: () {
                Navigator.pushNamed(context, '/resume');
              },
              child: Text(
                'Résumé',
                style: _navFont,
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ]),
          Row(
            children: [HomeButton()],
          )
        ],
      ),
    );
  }
}
