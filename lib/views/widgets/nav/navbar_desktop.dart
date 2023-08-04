// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../buttons/primary_button.dart';
import '../buttons/primary_icon_button.dart';
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

openUrl(pageUrl) async {
  final url = Uri.parse(pageUrl);
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
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: width <= 1550
                ? EdgeInsets.fromLTRB(50, 20, 50, 20)
                : EdgeInsets.fromLTRB(200, 20, 200, 20),
            width: 2000,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NavLogo(
                  myColor: Colors.black,
                  logoTextSize: 18,
                  iconsSize: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NavBarItems(
                        onPressed: () => Scrollable.ensureVisible(
                            widget.homeKey.currentContext!,
                            alignment: 1,
                            duration: Duration(seconds: 1),
                            curve: Curves.ease),
                        title: 'Home',
                        initialColor: Colors.black,
                        hoverColorIn: Color.fromARGB(255, 2, 185, 130),
                        hoverColorOut: Colors.black),
                    SizedBox(
                      width: 10,
                    ),
                    NavBarItems(
                        onPressed: () => Scrollable.ensureVisible(
                            widget.aboutKey.currentContext!,
                            alignment: 1,
                            duration: Duration(seconds: 1),
                            curve: Curves.ease),
                        title: 'About',
                        initialColor: Colors.black,
                        hoverColorIn: Color.fromARGB(255, 2, 185, 130),
                        hoverColorOut: Colors.black),
                    SizedBox(
                      width: 10,
                    ),
                    NavBarItems(
                        onPressed: () => Scrollable.ensureVisible(
                            widget.projectsKey.currentContext!,
                            alignment: 1,
                            duration: Duration(seconds: 1),
                            curve: Curves.ease),
                        title: 'Projects',
                        initialColor: Colors.black,
                        hoverColorIn: Color.fromARGB(255, 2, 185, 130),
                        hoverColorOut: Colors.black),
                  ],
                ),
                PrimaryButton(
                    title: 'Work With Me',
                    initalTextColor: Colors.white,
                    hoverInBgColor: Color.fromARGB(255, 2, 185, 130),
                    initialBgColor: Colors.black,
                    hoverInColor: Colors.black,
                    hoverOutBgColor: Colors.black,
                    hoverOutColor: Colors.white,
                    onPressed: () =>
                        openUrl('mailto:hello@pozadkey.com?subject=Hello'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
