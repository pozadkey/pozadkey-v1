// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

class FooterDesktop extends StatefulWidget {
  const FooterDesktop({Key? key}) : super(key: key);

  @override
  State<FooterDesktop> createState() => _FooterDesktopState();
}

class _FooterDesktopState extends State<FooterDesktop> {
  final _footerFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      letterSpacing: 0.41,
      color: Colors.grey[350],
      fontWeight: FontWeight.w500);

  void _launchGithub() async {
    final url = Uri.parse('https://github.com/pozadkey');
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

  void _launchTwitter() async {
    final url = Uri.parse('https://twitter.com/pozadkey');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('y').format(now);

    return Container(
      padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
      color: Color.fromARGB(255, 5, 3, 12),
      height: 100,
      child: Row(
        children: [
          Expanded(
              child: MaterialButton(
            minWidth: 0,
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Row(
              children: [
                Stack(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.white,
                      size: 50,
                    ),
                    Positioned(
                      left: 5,
                      bottom: 6,
                      child: Image.asset(
                        'assets/images/IMG_4522.PNG',
                        height: 40,
                        width: 40,
                        fit: BoxFit.contain,
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '© Pozadkey $formattedDate. All Rights Reserved.',
                  style: _footerFont,
                )
              ],
            ),
          )),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MaterialButton(
                hoverColor: Color.fromARGB(235, 255, 153, 0),
                onPressed: _launchGithub,
                child: Row(
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
              ),
              SizedBox(
                width: 30,
              ),
              MaterialButton(
                hoverColor: Color.fromARGB(235, 255, 153, 0),
                onPressed: _launchLinkedIn,
                child: Row(
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
              ),
              SizedBox(
                width: 30,
              ),
              MaterialButton(
                hoverColor: Color.fromARGB(235, 255, 153, 0),
                onPressed: _launchTwitter,
                child: Row(
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
              ),
            ],
          ))
        ],
      ),
    );
  }
}
