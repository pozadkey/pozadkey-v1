// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NavLogo extends StatefulWidget {
  const NavLogo({Key? key}) : super(key: key);

  @override
  State<NavLogo> createState() => _NavLogoState();
}

class _NavLogoState extends State<NavLogo> {
  final _logoFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 20,
      color: Colors.white,
      letterSpacing: 1.5,
      fontWeight: FontWeight.w700);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Icon(
              Icons.circle,
              color: Colors.white,
              size: 50,
            ),
            Image.asset(
              'assets/images/IMG_4522.PNG',
              fit: BoxFit.contain,
              colorBlendMode: BlendMode.darken,
              width: 50,
              height: 50,
            ),
          ],
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'POZADKEY',
          style: _logoFont,
        ),
      ],
    );
  }
}
