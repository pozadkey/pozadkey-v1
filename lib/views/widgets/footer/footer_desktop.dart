// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterDesktop extends StatefulWidget {
  const FooterDesktop({Key? key}) : super(key: key);

  @override
  State<FooterDesktop> createState() => _FooterDesktopState();
}

class _FooterDesktopState extends State<FooterDesktop> {
  final _footerFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 15,
      // color: Color.fromARGB(241, 3, 26, 199),
      letterSpacing: 0.41,
      color: Colors.white,
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(100, 0, 100, 50),
      color: Color.fromARGB(255, 5, 3, 12),
      height: 100,
      child: Row(
        children: [
          Expanded(
              child: Row(
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
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Pozadkey',
                style: _footerFont,
              )
            ],
          )),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Github',
                    style: _footerFont,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    FontAwesomeIcons.arrowUpRightFromSquare,
                    color: Colors.white,
                    size: 10,
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.linkedinIn,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'LinkedIn',
                    style: _footerFont,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    FontAwesomeIcons.arrowUpRightFromSquare,
                    color: Colors.white,
                    size: 10,
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Twitter',
                    style: _footerFont,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    FontAwesomeIcons.arrowUpRightFromSquare,
                    color: Colors.white,
                    size: 10,
                  ),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
