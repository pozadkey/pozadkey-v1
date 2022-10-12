// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../../widgets/buttons/primary_button.dart';
import '../../../widgets/buttons/secondary_icon_button.dart';

class IntroDesktop extends StatefulWidget {
  const IntroDesktop({Key? key}) : super(key: key);

  @override
  State<IntroDesktop> createState() => _IntroDesktopState();
}

class _IntroDesktopState extends State<IntroDesktop> {
  final _nameFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 80,
      color: Colors.white,
      fontWeight: FontWeight.w600);

  final subIntroFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 40,
      color: Colors.grey[400],
      fontWeight: FontWeight.w600);

  final _introFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
      color: Colors.grey[400],
      fontWeight: FontWeight.w400);

  final _introColoredFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
      color: Color.fromARGB(247, 252, 118, 8),
      fontWeight: FontWeight.w400);

  final _boxedFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 24,
      color: Colors.black,
      letterSpacing: 0.41,
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      padding: EdgeInsets.fromLTRB(200, 0, 200, 0),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
          opacity: 0.25,
          image: AssetImage('assets/images/dark2.JPG'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi! I am ',
                  style: subIntroFont,
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Text(
                    'Web & Mobile Engineer',
                    style: _boxedFont,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            child: Text(
              'Damilare Ajakaiye',
              style: _nameFont,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Text(
              'I build for the web and mobile.',
              style: subIntroFont,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 550,
            child: Text(
              'I am a software engineer specializing in creating solutions suitable for  User Experience. I\'m currently focused on building more accesible products using modern web technology. ',
              style: _introFont,
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 350,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PrimaryButton(
                  title: 'Check Out My Projects',
                  initalTextColor: Colors.white,
                  initialBgColor: Color.fromARGB(247, 252, 118, 8),
                  hoverInColor: Colors.black,
                  hoverInBgColor: Colors.white,
                  hoverOutColor: Colors.white,
                  hoverOutBgColor: Color.fromARGB(247, 252, 118, 8),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
