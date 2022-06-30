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
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w600);

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
            Positioned(
              left: 5,
              bottom: 6,
              child: Image.asset(
                'assets/images/IMG_4522.PNG',
                height: 40,
                width: 40,
                fit: BoxFit.contain,
                colorBlendMode: BlendMode.darken,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'POZADKEY.',
          style: _logoFont,
        ),
      ],
    );
  }
}
