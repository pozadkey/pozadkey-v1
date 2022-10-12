// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

import '../nav/navbar_items.dart';

class FooterDesktop extends StatefulWidget {
  const FooterDesktop({Key? key}) : super(key: key);

  @override
  State<FooterDesktop> createState() => _FooterDesktopState();
}

class _FooterDesktopState extends State<FooterDesktop> {
  final _footerFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
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
      padding: EdgeInsets.fromLTRB(200, 15, 200, 15),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarItems(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              title: '© Pozadkey $formattedDate. All Rights Reserved.',
              initialColor: Color.fromARGB(255, 214, 214, 214),
              hoverColorIn: Color.fromARGB(247, 252, 118, 8),
              hoverColorOut: Color.fromARGB(255, 214, 214, 214)),
          Row(
            children: [
              NavBarItems(
                  onPressed: _launchGithub,
                  title: 'Github',
                  initialColor: Color.fromARGB(255, 214, 214, 214),
                  hoverColorIn: Color.fromARGB(247, 252, 118, 8),
                  hoverColorOut: Color.fromARGB(255, 214, 214, 214)),
              NavBarItems(
                  onPressed: _launchLinkedIn,
                  title: 'LinkedIn',
                  initialColor: Color.fromARGB(255, 214, 214, 214),
                  hoverColorIn: Color.fromARGB(247, 252, 118, 8),
                  hoverColorOut: Color.fromARGB(255, 214, 214, 214)),
              NavBarItems(
                  onPressed: _launchTwitter,
                  title: 'Twitter',
                  initialColor: Color.fromARGB(255, 214, 214, 214),
                  hoverColorIn: Color.fromARGB(247, 252, 118, 8),
                  hoverColorOut: Color.fromARGB(255, 214, 214, 214)),
            ],
          )
        ],
      ),
    );
  }
}
