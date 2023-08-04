// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import '../../../widgets/buttons/primary_button.dart';
import '../../../widgets/buttons/secondary_icon_button.dart';

class IntroDesktop extends StatefulWidget {
  var projectsKey = GlobalKey();
  IntroDesktop({Key? key, required this.projectsKey}) : super(key: key);

  @override
  State<IntroDesktop> createState() => _IntroDesktopState();
}

class _IntroDesktopState extends State<IntroDesktop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final headerFont = TextStyle(
        fontSize: width >= 800 ? 70 : 35,
        color: const Color.fromARGB(255, 0, 0, 0),
        fontWeight: FontWeight.w700,
        letterSpacing: 0.5);

    final headerFont2 = TextStyle(
        fontSize: width >= 800 ? 50 : 35,
        color: Color.fromARGB(255, 202, 205, 212),
        fontWeight: FontWeight.w800,
        letterSpacing: 0.5);

    final subIntroFont = TextStyle(
        fontSize: 12,
        color: Color.fromARGB(255, 202, 205, 212),
        letterSpacing: 0.3,
        fontWeight: FontWeight.w500);

    final introFont = TextStyle(
        fontSize: 14,
        color: Color.fromARGB(255, 0, 0, 0),
        fontWeight: FontWeight.w500,
        height: 2,
        letterSpacing: 0.6);

    final introFont2 = TextStyle(
        fontSize: 14,
        height: 2,
        color: Color.fromARGB(255, 233, 231, 231),
        fontWeight: FontWeight.w500,
        letterSpacing: 0.6);

    return Container(
      height: 700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 2000,
            padding: width >= 800
                ? EdgeInsets.fromLTRB(110, 0, 110, 0)
                : EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: 700,
                    child: Text(
                      'Flutter & Backend\nEngineer',
                      style: headerFont,
                      textAlign: TextAlign.center,
                    )),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 650,
                  child: Center(
                      child: Text(
                    'I\'m Damilare Ajakaiye,a web & mobile engineer who loves to craft suitable experiences for the web. I\'m focused on building more accessible products and opportunities to collaborate with diverse industries around the world. ',
                    style: introFont,
                    textAlign: TextAlign.center,
                  )),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                    width: 300,
                    child: PrimaryButton(
                      title: 'Explore Projects >',
                      initalTextColor: Colors.white,
                      hoverInBgColor: Color.fromARGB(255, 2, 185, 130),
                      initialBgColor: Colors.black,
                      hoverInColor: Colors.black,
                      hoverOutBgColor: Colors.black,
                      hoverOutColor: Colors.white,
                      onPressed: () => Scrollable.ensureVisible(
                          widget.projectsKey.currentContext!,
                          alignment: 1,
                          duration: Duration(seconds: 1),
                          curve: Curves.ease),
                    )),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
