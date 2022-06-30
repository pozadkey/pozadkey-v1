// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../widgets/buttons/cta_button.dart';
import '../../widgets/buttons/home_button.dart';

class IntroMobile extends StatefulWidget {
  const IntroMobile({Key? key}) : super(key: key);

  @override
  State<IntroMobile> createState() => _IntroMobileState();
}

class _IntroMobileState extends State<IntroMobile> {
  final _nameFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.w700);

  final _introFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 12,
      color: Colors.grey[350],
      fontWeight: FontWeight.w400);

  final _boxedFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 8,
      color: Colors.white,
      letterSpacing: 0.41,
      fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
      child: Column(
        children: [
          SizedBox(
            width: 230,
            child: FittedBox(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 55,
                    child: Icon(
                      Icons.circle,
                      color: Color.fromARGB(237, 104, 12, 216),
                      size: 60,
                    ),
                  ),
                  Positioned(
                    left: 335,
                    top: 50,
                    child: Icon(
                      Icons.circle,
                      color: Color.fromARGB(235, 255, 153, 0),
                      size: 60,
                    ),
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: 400,
                  ),
                  Positioned(
                    left: 50,
                    bottom: 50,
                    child: Image.asset(
                      'assets/images/IMG_4522.PNG',
                      height: 300,
                      width: 300,
                      fit: BoxFit.contain,
                      colorBlendMode: BlendMode.darken,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 400,
            child: FittedBox(
              child: Row(
                children: [
                  Text(
                    'Hi!',
                    style: _nameFont,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    'I am',
                    style: _nameFont,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(237, 104, 12, 216),
                        border: Border.all(
                          color: Color.fromARGB(237, 104, 12, 216),
                        ),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Text(
                      'Web & Mobile Engineer',
                      style: _boxedFont,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 400,
            child: FittedBox(
              child: Text(
                'Damilare Ajakaiye',
                style: _nameFont,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 400,
            child: FittedBox(
              child: Text(
                'I have a passion for turning ideas into products suitable for\nend-users. I am currently exploring and building on the\ndecentralized web.',
                style: _introFont,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 250,
            child: FittedBox(
              child: Row(
                children: [
                  HomeButton(),
                  SizedBox(
                    width: 10,
                  ),
                  CTAButton(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
