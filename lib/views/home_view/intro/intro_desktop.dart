// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pozadkey/views/widgets/buttons/cta_button.dart';
import 'package:pozadkey/views/widgets/buttons/home_button.dart';
import 'package:pozadkey/views/widgets/nav/navbar_logo.dart';

class IntroDesktop extends StatefulWidget {
  const IntroDesktop({Key? key}) : super(key: key);

  @override
  State<IntroDesktop> createState() => _IntroDesktopState();
}

class _IntroDesktopState extends State<IntroDesktop> {
  final _nameFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.w700);

  final _introFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
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
      padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
      height: 750,
      color: Color.fromARGB(255, 5, 3, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 550,
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
                width: 550,
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
                width: 550,
                child: FittedBox(
                  child: Text(
                    'I have a passion for turning ideas into products suitable for\nend-users. I am currently exploring and building on the\ndecentralized web.',
                    style: _introFont,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 350,
                child: FittedBox(
                  child: Row(
                    children: [
                      HomeButton(),
                      SizedBox(
                        width: 10,
                      ),
                      CTAButton()
                    ],
                  ),
                ),
              ),
            ],
          )),
          SizedBox(
            width: 100,
          ),
          Expanded(
              child: Container(
            color: Color.fromARGB(255, 7, 3, 18),
            padding: EdgeInsets.all(60),
            width: 300,
            child: FittedBox(
              child: Center(
                  child: Stack(
                children: [
                  Positioned(
                    top: 300,
                    bottom: 20,
                    child: Icon(
                      Icons.circle,
                      color: Color.fromARGB(237, 104, 12, 216),
                      size: 70,
                    ),
                  ),
                  Positioned(
                    left: 410,
                    top: 50,
                    child: Icon(
                      Icons.circle,
                      color: Color.fromARGB(235, 255, 153, 0),
                      size: 70,
                    ),
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: 500,
                  ),
                  Positioned(
                    left: 50,
                    top: 40,
                    child: Image.asset(
                      'assets/images/IMG_4522.PNG',
                      height: 400,
                      width: 400,
                      fit: BoxFit.contain,
                      colorBlendMode: BlendMode.darken,
                    ),
                  )
                ],
              )),
            ),
          ))
        ],
      ),
    );
  }
}
