// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactButton extends StatefulWidget {
  const ContactButton({Key? key}) : super(key: key);

  @override
  _ContactButtonState createState() => _ContactButtonState();
}

class _ContactButtonState extends State<ContactButton> {
  final _navButtonFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 18,
      color: Color.fromARGB(235, 255, 153, 0),
      letterSpacing: 0.41,
      fontWeight: FontWeight.w600);

  void _launchEmail() async {
    final url = Uri.parse('mailto:chelpoza@gmail.com?subject=Hello');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
        child: Row(
          children: [
            Text(
              'Send me an email',
              style: _navButtonFont,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              FontAwesomeIcons.share,
              color: Color.fromARGB(235, 255, 153, 0),
            )
          ],
        ),
      ),
      onPressed: () {
        _launchEmail();
      },
      style: TextButton.styleFrom(
        side: BorderSide(
          color: Color.fromARGB(235, 255, 153, 0),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
      ),
    );
  }
}
