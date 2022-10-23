// ignore_for_file: prefer_const_constructors, unused_field

import 'package:flutter/material.dart';
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
      width: 2000,
      padding: EdgeInsets.fromLTRB(200, 20, 200, 20),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarItems(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              title: '© $formattedDate. Damilare Ajakaiye.',
              initialColor: Colors.white,
              hoverColorIn: Color.fromARGB(255, 213, 252, 121),
              hoverColorOut: Color.fromARGB(255, 214, 214, 214)),
          Row(
            children: [
              NavBarItems(
                  onPressed: _launchGithub,
                  title: 'Github',
                  initialColor: Colors.white,
                  hoverColorIn: Color.fromARGB(255, 213, 252, 121),
                  hoverColorOut: Color.fromARGB(255, 214, 214, 214)),
              SizedBox(
                width: 10,
              ),
              NavBarItems(
                  onPressed: _launchLinkedIn,
                  title: 'LinkedIn',
                  initialColor: Colors.white,
                  hoverColorIn: Color.fromARGB(255, 213, 252, 121),
                  hoverColorOut: Color.fromARGB(255, 214, 214, 214)),
              SizedBox(
                width: 10,
              ),
              NavBarItems(
                  onPressed: _launchTwitter,
                  title: 'Twitter',
                  initialColor: Colors.white,
                  hoverColorIn: Color.fromARGB(255, 213, 252, 121),
                  hoverColorOut: Color.fromARGB(255, 214, 214, 214)),
            ],
          )
        ],
      ),
    );
  }
}
