// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../models/stack_model.dart';
import '../../../widgets/buttons/secondary_icon_button.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final _headerFont = TextStyle(
        fontSize: width >= 500 ? 100 : 50,
        color: Colors.white,
        fontWeight: FontWeight.w800,
        letterSpacing: 0.5);

    final _introFont = TextStyle(
        fontSize: 14,
        color: Color.fromARGB(255, 202, 205, 212),
        fontWeight: FontWeight.w400,
        height: 2,
        letterSpacing: 0.6);

    final _introFont2 = TextStyle(
        fontSize: 12,
        color: Colors.white,
        height: 1.5,
        letterSpacing: 0.6,
        fontWeight: FontWeight.w500);

    void resumeLink() {
      final url = Uri.parse(
          'https://docs.google.com/document/d/1BYRWahLz8h9vvaDhzJEOKYsEBFVTO144_VZGHr-j-BA/edit?usp=sharing');
      launchUrl(url);
    }

    return Container(
        width: double.infinity,
        padding: width >= 800
            ? EdgeInsets.fromLTRB(110, 100, 110, 100)
            : EdgeInsets.fromLTRB(20, 100, 20, 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 600,
              child: Text(
                'About Me',
                style: _headerFont,
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: width >= 800 ? 700 : 700,
              child: Text(
                'Hello! My name is Damilare and I\'m a self-taught software engineer who enjoys crafting web and mobile applications on the internet using Javascript and Flutter. Having a good understanding of Flutter, I\'m able to build scalable applications on the web and craft from development to deployment on Android and iOS platforms, while rendering server-side applications with Node.js. I\'m always on the look out for technical and professional opportunies to improve my skill-set and experience for building an outstanding User Experience.',
                style: _introFont,
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FittedBox(
              child: SizedBox(
                child: SecondaryIconButton(
                    title: 'View My Résumé',
                    bgColor: Colors.transparent,
                    bgColorOut: Colors.transparent,
                    titleColor: Colors.white,
                    titleColorIn: Colors.black,
                    titleColorOut: Colors.white,
                    myColor: Colors.white,
                    onPressed: resumeLink),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FittedBox(
              child: SizedBox(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Some of the technologies I\'ve worked with',
                      style: _introFont,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      FontAwesomeIcons.arrowDownLong,
                      color: Color.fromARGB(255, 213, 252, 121),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: width >= 500 ? 3 : 2,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                    childAspectRatio:
                        width >= 200 && width <= 1200 ? 6 / 3 : 6 / 3,
                  ),
                  itemCount: stackList.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (BuildContext ctx, index) {
                    StackModel stacks = stackList[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                          child: SizedBox(
                            width: width >= 800 ? 120 : 100,
                            child: Text(
                              stacks.title.toUpperCase(),
                              style: _introFont2,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            )
          ],
        ));
  }
}
