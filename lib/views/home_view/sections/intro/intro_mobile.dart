// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import '../../../widgets/buttons/primary_button.dart';

class IntroMobile extends StatefulWidget {
  var projectsKey = GlobalKey();
  IntroMobile({Key? key, required this.projectsKey}) : super(key: key);

  @override
  State<IntroMobile> createState() => _IntroMobileState();
}

class _IntroMobileState extends State<IntroMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final headerFont = TextStyle(
        fontSize: width >= 800 ? 70 : 35,
        color: Color.fromRGBO(54, 54, 54, 1),
        fontWeight: FontWeight.w700,
        letterSpacing: 0.2);

    final introFont = TextStyle(
        fontSize: 14,
        color: Color.fromRGBO(117, 117, 117, 1),
        fontWeight: FontWeight.w500,
        height: 2,
        letterSpacing: 0.2);

    return SizedBox(
      width: double.infinity,
      height: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: width >= 800
                ? EdgeInsets.fromLTRB(110, 0, 110, 0)
                : EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: 700,
                    child: Text(
                      'Web & Mobile\nEngineer',
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
                    'I\'m Damilare Ajakaiye, a software engineer who enjoys crafting suitable web and mobile experiences for users. I\'m focused on building more accessible products and opportunities to collaborate with diverse industries around the world. ',
                    style: introFont,
                    textAlign: TextAlign.center,
                  )),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                    width: 200,
                    child: PrimaryButton(
                      title: 'Explore Projects >',
                      initalTextColor: Colors.white,
                      hoverInBgColor: Color.fromRGBO(117, 117, 117, 1),
                      initialBgColor: Color.fromRGBO(54, 54, 54, 1),
                      hoverInColor: Colors.white,
                      hoverOutBgColor: Color.fromRGBO(54, 54, 54, 1),
                      hoverOutColor: Colors.white,
                      onPressed: () => Scrollable.ensureVisible(
                          widget.projectsKey.currentContext!,
                          alignment: 1,
                          duration: Duration(seconds: 1),
                          curve: Curves.ease),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
