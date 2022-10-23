// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../nav/navbar_items.dart';

class FooterMobile extends StatefulWidget {
  const FooterMobile({Key? key}) : super(key: key);

  @override
  State<FooterMobile> createState() => _FooterMobileState();
}

class _FooterMobileState extends State<FooterMobile> {

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
      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
      alignment: Alignment.bottomCenter,
      width: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
            child: Row(
              children: [
                NavBarItems(
                    onPressed: _launchGithub,
                    title: 'Github',
                    initialColor: Colors.white,
                    hoverColorIn: Color.fromARGB(247, 252, 118, 8),
                    hoverColorOut: Colors.white),
                SizedBox(
                  width: 10,
                ),
                NavBarItems(
                    onPressed: _launchLinkedIn,
                    title: 'LinkedIn',
                    initialColor: Colors.white,
                    hoverColorIn: Color.fromARGB(247, 252, 118, 8),
                    hoverColorOut: Colors.white),
                SizedBox(
                  width: 10,
                ),
                NavBarItems(
                    onPressed: _launchTwitter,
                    title: 'Twitter',
                    initialColor: Colors.white,
                    hoverColorIn: Color.fromARGB(247, 252, 118, 8),
                    hoverColorOut: Colors.white),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FittedBox(
            child: SizedBox(
              child: Row(
                children: [
                  NavBarItems(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      title: '© $formattedDate. Damilare Ajakaiye.',
                      initialColor: Colors.white,
                      hoverColorIn: Color.fromARGB(247, 252, 118, 8),
                      hoverColorOut: Colors.white),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
