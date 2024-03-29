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
  openUrl(pageUrl) async {
    final url = Uri.parse(pageUrl);
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
                    onPressed: () => openUrl('https://github.com/pozadkey'),
                    title: 'Github',
                    initialColor: Color.fromRGBO(54, 54, 54, 1),
                    hoverColorIn: Color.fromRGBO(117, 117, 117, 1),
                    hoverColorOut: Color.fromRGBO(54, 54, 54, 1)),
                SizedBox(
                  width: 10,
                ),
                NavBarItems(
                    onPressed: () =>
                        openUrl('https://linkedin.com/in/damilare-ajakaiye'),
                    title: 'LinkedIn',
                    initialColor: Color.fromRGBO(54, 54, 54, 1),
                    hoverColorIn: Color.fromRGBO(117, 117, 117, 1),
                    hoverColorOut: Color.fromRGBO(54, 54, 54, 1)),
                SizedBox(
                  width: 10,
                ),
                NavBarItems(
                    onPressed: () => openUrl('https://twitter.com/pozadkey'),
                    title: 'Twitter',
                    initialColor: Color.fromRGBO(54, 54, 54, 1),
                    hoverColorIn: Color.fromRGBO(117, 117, 117, 1),
                    hoverColorOut: Color.fromRGBO(54, 54, 54, 1)),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FittedBox(
            child: Row(
              children: [
                NavBarItems(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    title: '© $formattedDate. Damilare Ajakaiye.',
                    initialColor: Color.fromRGBO(54, 54, 54, 1),
                    hoverColorIn: Color.fromRGBO(117, 117, 117, 1),
                    hoverColorOut: Color.fromRGBO(54, 54, 54, 1)),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
