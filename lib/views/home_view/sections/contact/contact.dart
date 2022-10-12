// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../widgets/buttons/secondary_icon_button.dart';
import '../../../widgets/buttons/secondary_large_button.dart';
import '../../../widgets/links/links.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _headerFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 50,
      color: Colors.white,
      fontWeight: FontWeight.w500);

  final _nameFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 40,
      color: Colors.white,
      fontWeight: FontWeight.w500);

  final _introFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
      color: Colors.grey[400],
      fontWeight: FontWeight.w400);

  final subIntroFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 40,
      color: Colors.grey[400],
      fontWeight: FontWeight.w600);

  void _launchEmail() async {
    final url = Uri.parse('mailto:hello@pozadkey.com?subject=Hello');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchTwitter() async {
    final url = Uri.parse('https://twitter.com/pozadkey');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchLinkedIn() async {
    final url = Uri.parse('https://linkedin.com/in/damilare-ajakaiye');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(200, 200, 200, 200),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
          opacity: 0.15,
          image: AssetImage('assets/images/dark1.JPG'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Work With Me',
            style: _headerFont,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 14, 14, 14),
              border: Border.all(
                color: Color.fromARGB(255, 14, 14, 14),
              ),
              borderRadius: BorderRadius.circular(
                25.0,
              ),
            ),
            width: 600,
            child: Column(
              children: [
                SizedBox(
                  width: 550,
                  child: Text(
                    'Let\'s talk About Your Next Big Project Idea!',
                    style: _nameFont,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 400,
                  child: FittedBox(
                    child: SecondaryLargeButton(
                      bgColor: Colors.transparent,
                      bgColorOut: Colors.transparent,
                      titleColor: Color.fromARGB(247, 252, 118, 8),
                      titleColorIn: Colors.white,
                      titleColorOut: Color.fromARGB(247, 252, 118, 8),
                      myColor: Color.fromARGB(247, 252, 118, 8),
                      title: 'hello@pozadkey.com',
                      onPressed: _launchEmail,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Or connect with me via',
                      style: _introFont,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Links(
                      onPressed: _launchLinkedIn,
                      title: 'LinkedIn',
                      initialColor: Color.fromARGB(247, 252, 118, 8),
                      hoverColorIn: Colors.white,
                      hoverColorOut: Color.fromARGB(247, 252, 118, 8),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'or',
                      style: _introFont,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Links(
                      onPressed: _launchTwitter,
                      title: 'Twitter',
                      initialColor: Color.fromARGB(247, 252, 118, 8),
                      hoverColorIn: Colors.white,
                      hoverColorOut: Color.fromARGB(247, 252, 118, 8),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
