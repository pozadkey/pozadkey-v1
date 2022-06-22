// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pozadkey/views/widgets/buttons/cta_button.dart';
import 'package:pozadkey/views/widgets/buttons/home_button.dart';
import 'package:pozadkey/views/widgets/navbar_logo.dart';

class IntroDesktop extends StatefulWidget {
  const IntroDesktop({Key? key}) : super(key: key);

  @override
  State<IntroDesktop> createState() => _IntroDesktopState();
}

class _IntroDesktopState extends State<IntroDesktop> {
  final _nameFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 40,
      color: Colors.white,
      fontWeight: FontWeight.w700);

  final _introFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w400);

  final _boxedFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
      color: Colors.white,
      letterSpacing: 0.41,
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
      height: 700,
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
                width: 600,
                child: FittedBox(
                  child: Row(
                    children: [
                      Text(
                        'Hi!',
                        style: _nameFont,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'I am',
                        style: _nameFont,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TextButton(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Text(
                            'Web & Mobile Engineer',
                            style: _boxedFont,
                          ),
                        ),
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          //backgroundColor: Color.fromARGB(238, 51, 71, 221),
                          backgroundColor: Color.fromARGB(237, 104, 12, 216),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 600,
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
                width: 600,
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
                width: 400,
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
            child: Center(
                child: Stack(
              children: [
                Positioned(
                  top: 300,
                  child: Icon(
                    Icons.circle,
                    color: Color.fromARGB(237, 104, 12, 216),
                    size: 50,
                  ),
                ),
                Positioned(
                  left: 300,
                  child: Icon(
                    Icons.circle,
                    color: Color.fromARGB(235, 255, 153, 0),
                    size: 50,
                  ),
                ),
                Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: 400,
                ),
                Image.asset(
                  'assets/images/IMG_4522.PNG',
                  height: 400,
                  width: 400,
                  fit: BoxFit.contain,
                  colorBlendMode: BlendMode.darken,
                )
              ],
            )),
          ))
        ],
      ),
    );
  }
}
