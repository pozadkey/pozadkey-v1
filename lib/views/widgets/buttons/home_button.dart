// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeButton extends StatefulWidget {
  const HomeButton({Key? key}) : super(key: key);

  @override
  _HomeButtonState createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  final _navButtonFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 18,
      color: Colors.white,
      letterSpacing: 0.41,
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Padding(
        padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
        child: Text(
          'Hire Me',
          style: _navButtonFont,
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/login');
      },
      style: TextButton.styleFrom(
        backgroundColor: Color.fromARGB(235, 255, 153, 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      ),
    );
  }
}
