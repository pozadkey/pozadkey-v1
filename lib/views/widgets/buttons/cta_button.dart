// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CTAButton extends StatefulWidget {
  const CTAButton({Key? key}) : super(key: key);

  @override
  _CTAButtonState createState() => _CTAButtonState();
}

class _CTAButtonState extends State<CTAButton> {
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
        padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
        child: Row(
          children: [
            Text(
              'Projects',
              style: _navButtonFont,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              // Icons.arrow_forward_ios,
              FontAwesomeIcons.arrowRight,
              color: Colors.white,
              size: 20,
            )
          ],
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/login');
      },
    );
  }
}
