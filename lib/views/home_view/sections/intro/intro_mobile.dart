// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../widgets/buttons/primary_icon_button.dart';
import '../../../widgets/buttons/secondary_icon_button.dart';

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

    final _headerFont = TextStyle(
        fontSize: width >= 500 ? 100 : 50,
        color: Colors.white,
        fontWeight: FontWeight.w800,
        letterSpacing: 0.5);

    final _headerFont2 = TextStyle(
        fontSize: width >= 800 ? 50 : 35,
        color: Color.fromARGB(255, 202, 205, 212),
        fontWeight: FontWeight.w800,
        letterSpacing: 0.5);

    final subIntroFont = TextStyle(
        fontSize: 12,
        color: Color.fromARGB(255, 202, 205, 212),
        letterSpacing: 0.3,
        fontWeight: FontWeight.w500);

    final _introFont = TextStyle(
        fontSize: 14,
        color: Color.fromARGB(255, 202, 205, 212),
        fontWeight: FontWeight.w400,
        height: 2,
        letterSpacing: 0.6);

    final _introFont2 = TextStyle(
        fontSize: 14,
        height: 2,
        color: Color.fromARGB(255, 233, 231, 231),
        fontWeight: FontWeight.w500,
        letterSpacing: 0.6);
    return SizedBox(
      width: double.infinity,
      // height: 700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: width >= 800
                ? EdgeInsets.fromLTRB(110, 100, 110, 100)
                : EdgeInsets.fromLTRB(20, 100, 20, 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'HI! I AM A',
                  style: subIntroFont,
                ),
                SizedBox(
                  height: 5,
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: 'Web ',
                    style: _headerFont,
                  ),
                  TextSpan(
                    text: '&\n',
                    style: _headerFont2,
                  ),
                  TextSpan(
                    text: 'Mobile\n',
                    style: _headerFont,
                  ),
                  TextSpan(
                    text: 'Engineer',
                    style: _headerFont,
                  ),
                ])),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 600,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'I\'m ',
                          style: _introFont,
                        ),
                        TextSpan(
                            text: 'Damilare Ajakaiye, ', style: _introFont2),
                        TextSpan(
                            text:
                                'a web & mobile engineer who loves to craft suitable experiences for the web. I\'m focused on building more accessible products and opportunities to collaborate with diverse industries around the world.',
                            style: _introFont),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FittedBox(
                  child: SizedBox(
                    width: 200,
                    child: SecondaryIconButton(
                      title: 'View My Works',
                      bgColor: Colors.transparent,
                      bgColorOut: Colors.transparent,
                      titleColor: Colors.white,
                      titleColorIn: Colors.black,
                      titleColorOut: Colors.white,
                      myColor: Colors.white,
                      onPressed: () => Scrollable.ensureVisible(
                          widget.projectsKey.currentContext!,
                          alignment: 1,
                          duration: Duration(seconds: 1),
                          curve: Curves.ease),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
