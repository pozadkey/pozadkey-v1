// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../buttons/navbar_button.dart';
import '../buttons/primary_icon_button.dart';
import '../buttons/secondary_icon_button.dart';
import 'navbar_items.dart';
import 'navbar_logo.dart';

IconData myMenu = Icons.menu_rounded;
double collapsableHeight = 0.0;

class NavBarMobile extends StatefulWidget {
  var homeKey = GlobalKey();
  var aboutKey = GlobalKey();
  var projectsKey = GlobalKey();

  NavBarMobile({
    Key? key,
    required this.homeKey,
    required this.aboutKey,
    required this.projectsKey,
  }) : super(key: key);

  @override
  State<NavBarMobile> createState() => _NavBarMobileState();
}

void _launchEmail() async {
  final url = Uri.parse('mailto:hello@pozadkey.com?subject=Hello');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

void resumeLink() {
  final url = Uri.parse(
      'https://docs.google.com/document/d/1BYRWahLz8h9vvaDhzJEOKYsEBFVTO144_VZGHr-j-BA/edit?usp=sharing');
  launchUrl(url);
}

class _NavBarMobileState extends State<NavBarMobile> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          color: Colors.black,
          alignment: Alignment.center,
          padding: width <= 420
              ? EdgeInsets.fromLTRB(10, 15, 10, 15)
              : EdgeInsets.fromLTRB(20, 15, 20, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavLogo(
                myColor: Colors.white,
                logoTextSize: width <= 340 ? 15 : 18,
                iconsSize: width <= 340 ? 15 : 18,
              ),
              NavBarButton(
                hamburgerSize: width <= 340 ? 15 : 30,
                onPressed: () {
                  if (_isVisible == false) {
                    setState(() {
                      _isVisible = true;
                      myMenu = FontAwesomeIcons.xmark;
                    });
                  } else if (_isVisible == true) {
                    setState(() {
                      _isVisible = false;
                      myMenu = FontAwesomeIcons.bars;
                    });
                  }
                },
                hamburgerColor: _isVisible == false
                    ? Colors.white
                    : Color.fromARGB(255, 213, 252, 121),
              )
            ],
          ),
        ),
        Visibility(
            visible: _isVisible,
            child: AnimatedContainer(
              color: Colors.black,
              padding: width <= 420
                  ? EdgeInsets.fromLTRB(20, 20, 20, 20)
                  : EdgeInsets.only(
                      top: 20.0,
                      bottom: 20.0,
                    ),
              duration: Duration(milliseconds: 375),
              curve: Curves.easeInOut,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: width <= 420
                          ? EdgeInsets.fromLTRB(10, 15, 10, 15)
                          : EdgeInsets.fromLTRB(20, 15, 20, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          NavBarItems(
                              onPressed: () {
                                setState(() {
                                  _isVisible = false;
                                  myMenu = FontAwesomeIcons.bars;
                                });
                                Scrollable.ensureVisible(
                                    widget.homeKey.currentContext!,
                                    alignment: 1,
                                    duration: Duration(seconds: 1),
                                    curve: Curves.ease);
                              },
                              title: 'Home',
                              initialColor: Colors.white,
                              hoverColorIn: Color.fromARGB(255, 213, 252, 121),
                              hoverColorOut: Colors.white),
                          SizedBox(
                            height: 20.0,
                          ),
                          NavBarItems(
                              onPressed: () {
                                setState(() {
                                  _isVisible = false;
                                  myMenu = FontAwesomeIcons.bars;
                                });
                                Scrollable.ensureVisible(
                                    widget.aboutKey.currentContext!,
                                    alignment: 1,
                                    duration: Duration(seconds: 1),
                                    curve: Curves.ease);
                              },
                              title: 'About',
                              initialColor: Colors.white,
                              hoverColorIn: Color.fromARGB(255, 213, 252, 121),
                              hoverColorOut: Colors.white),
                          SizedBox(
                            height: 20.0,
                          ),
                          NavBarItems(
                              onPressed: () {
                                setState(() {
                                  _isVisible = false;
                                  myMenu = FontAwesomeIcons.bars;
                                });
                                Scrollable.ensureVisible(
                                    widget.projectsKey.currentContext!,
                                    alignment: 1,
                                    duration: Duration(seconds: 1),
                                    curve: Curves.ease);
                              },
                              title: 'Work',
                              initialColor: Colors.white,
                              hoverColorIn: Color.fromARGB(255, 213, 252, 121),
                              hoverColorOut: Colors.white),
                          SizedBox(
                            height: 20.0,
                          ),
                          SizedBox(
                              width: width <= 420 ? 200 : 300,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SecondaryIconButton(
                                      title: 'View My Résumé',
                                      bgColor: Colors.transparent,
                                      bgColorOut: Colors.transparent,
                                      titleColor: Colors.white,
                                      titleColorIn: Colors.black,
                                      titleColorOut: Colors.white,
                                      myColor: Colors.white,
                                      onPressed: resumeLink),
                                ],
                              )),
                          SizedBox(
                            height: 20.0,
                          ),
                          SizedBox(
                              width: width <= 420 ? 200 : 300,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  PrimaryIconButton(
                                    title: 'Chat With Me',
                                    initalTextColor: Colors.black,
                                    initialBgColor: Colors.white,
                                    hoverInColor: Colors.white,
                                    hoverInBgColor:
                                        Color.fromARGB(255, 213, 252, 121),
                                    hoverOutColor: Colors.black,
                                    hoverOutBgColor: Colors.white,
                                    onPressed: () {
                                      setState(() {
                                        _isVisible = false;
                                        myMenu = FontAwesomeIcons.bars;
                                      });
                                      _launchEmail;
                                    },
                                  ),
                                ],
                              ))
                        ],
                      ))
                ],
              ),
            ))
      ],
    );
  }
}
