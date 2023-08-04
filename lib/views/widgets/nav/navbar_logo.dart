// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class NavLogo extends StatefulWidget {
  final Color myColor;
  double iconsSize;
  double logoTextSize;

  NavLogo(
      {Key? key,
      required this.myColor,
      required this.iconsSize,
      required this.logoTextSize})
      : super(key: key);

  @override
  State<NavLogo> createState() => _NavLogoState();
}

class _NavLogoState extends State<NavLogo> {
  @override
  Widget build(BuildContext context) {
    final _logoFont = TextStyle(
        fontSize: widget.logoTextSize,
        color: widget.myColor,
        letterSpacing: 0.5,
        fontWeight: FontWeight.w700);

    return MaterialButton(
      padding: EdgeInsets.zero,
      minWidth: 0,
      onPressed: () {
        Navigator.pushNamed(context, '/');
      },
      child: Text(
        'POZADKEY',
        style: _logoFont,
      ),
    );
  }
}
