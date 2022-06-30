// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey/views/widgets/buttons/contact_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  final _introFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.w400);

  final _footerFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 15,
      letterSpacing: 0.41,
      color: Colors.white,
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
      child: Row(
        children: [
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
                      color: Color.fromARGB(235, 255, 153, 0),
                      size: 70,
                    ),
                  ),
                  Positioned(
                    left: 410,
                    top: 50,
                    child: Icon(
                      Icons.circle,
                      color: Color.fromARGB(237, 104, 12, 216),
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
                    top: 50,
                    child: Image.asset(
                      'assets/images/IMG_4585.PNG',
                      height: 400,
                      width: 400,
                      fit: BoxFit.contain,
                      colorBlendMode: BlendMode.darken,
                    ),
                  )
                ],
              )),
            ),
          )),
          SizedBox(
            width: 40,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 600,
                child: FittedBox(
                  child: Text(
                    'Got an interesting project idea you want to bring to life?',
                    style: _introFont,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 600,
                child: FittedBox(
                  child: Row(
                    children: [
                      ContactButton(),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'or Connect with me',
                        style: _introFont,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        FontAwesomeIcons.linkedinIn,
                        color: Colors.white,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
