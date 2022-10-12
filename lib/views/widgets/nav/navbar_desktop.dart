// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../buttons/primary_button.dart';
import 'navbar_items.dart';
import 'navbar_logo.dart';

class NavBarDesktop extends StatefulWidget {
  var homeKey = GlobalKey();
  var aboutKey = GlobalKey();
  var projectsKey = GlobalKey();

  NavBarDesktop({
    Key? key,
    required this.homeKey,
    required this.aboutKey,
    required this.projectsKey,
  }) : super(key: key);

  @override
  State<NavBarDesktop> createState() => _NavBarDesktopState();
}

void _launchEmail() async {
  final url = Uri.parse('mailto:hello@pozadkey.com?subject=Hello');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _NavBarDesktopState extends State<NavBarDesktop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Color.fromARGB(255, 9, 9, 9),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: width <= 1550
                ? EdgeInsets.fromLTRB(50, 15, 50, 15)
                : EdgeInsets.fromLTRB(200, 15, 200, 15),
            width: 2000,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NavLogo(
                  myColor: Color.fromARGB(247, 252, 118, 8),
                  logoTextSize: 20,
                  iconsSize: 20,
                ),
                Row(children: [
                  NavBarItems(
                      onPressed: () => Scrollable.ensureVisible(
                          widget.homeKey.currentContext!,
                          alignment: 1,
                          duration: Duration(seconds: 1),
                          curve: Curves.ease),
                      title: 'Home',
                      initialColor: Colors.white,
                      hoverColorIn: Color.fromARGB(247, 252, 118, 8),
                      hoverColorOut: Colors.white),
                  NavBarItems(
                      onPressed: () => Scrollable.ensureVisible(
                          widget.aboutKey.currentContext!,
                          alignment: 1,
                          duration: Duration(seconds: 1),
                          curve: Curves.ease),
                      title: 'About',
                      initialColor: Colors.white,
                      hoverColorIn: Color.fromARGB(247, 252, 118, 8),
                      hoverColorOut: Colors.white),
                  NavBarItems(
                      onPressed: () => Scrollable.ensureVisible(
                          widget.projectsKey.currentContext!,
                          alignment: 1,
                          duration: Duration(seconds: 1),
                          curve: Curves.ease),
                      title: 'Projects',
                      initialColor: Colors.white,
                      hoverColorIn: Color.fromARGB(247, 252, 118, 8),
                      hoverColorOut: Colors.white),
                ]),
                Row(
                  children: [
                    PrimaryButton(
                      title: 'Hire Me',
                      initalTextColor: Colors.white,
                      initialBgColor: Color.fromARGB(247, 252, 118, 8),
                      hoverInColor: Colors.black,
                      hoverInBgColor: Colors.white,
                      hoverOutColor: Colors.white,
                      hoverOutBgColor: Color.fromARGB(247, 252, 118, 8),
                      onPressed: _launchEmail,
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
