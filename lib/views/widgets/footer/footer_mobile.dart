// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterMobile extends StatefulWidget {
  const FooterMobile({Key? key}) : super(key: key);

  @override
  State<FooterMobile> createState() => _FooterMobileState();
}

class _FooterMobileState extends State<FooterMobile> {
  final _footerFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      // color: Color.fromARGB(241, 3, 26, 199),
      letterSpacing: 0.41,
      color: Colors.white,
      fontWeight: FontWeight.w400);

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
      padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
      color: Color.fromARGB(255, 5, 3, 12),
      height: 140,
      width: 500,
      child: FittedBox(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: _launchGithub,
                  child: Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                MaterialButton(
                  onPressed: _launchLinkedIn,
                  child: Icon(
                    FontAwesomeIcons.linkedinIn,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                MaterialButton(
                  onPressed: _launchTwitter,
                  child: Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              '© Pozadkey $formattedDate. All Rights Reserved.',
              style: _footerFont,
            ),
          ],
        ),
      ),
    );
  }
}
