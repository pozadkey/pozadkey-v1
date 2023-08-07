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
      width: 2000,
      padding: EdgeInsets.fromLTRB(200, 20, 200, 20),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarItems(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              title: '© $formattedDate. Damilare Ajakaiye.',
              initialColor: Color.fromRGBO(54, 54, 54, 1),
              hoverColorIn: Color.fromRGBO(117, 117, 117, 1),
              hoverColorOut: Color.fromRGBO(54, 54, 54, 1)),
          Row(
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
          )
        ],
      ),
    );
  }
}
