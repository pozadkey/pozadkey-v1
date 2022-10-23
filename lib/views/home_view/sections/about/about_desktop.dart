// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey/models/stack_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../widgets/buttons/secondary_icon_button.dart';

class AboutDesktop extends StatefulWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  State<AboutDesktop> createState() => _AboutDesktopState();
}

class _AboutDesktopState extends State<AboutDesktop> {
  final _headerFont = TextStyle(
      fontSize: 100,
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

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          height: 750,
          padding: width <= 1550
              ? EdgeInsets.fromLTRB(50, 15, 50, 15)
              : EdgeInsets.fromLTRB(200, 15, 200, 15),
          width: 2000,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 500,
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
                          width: 500,
                          child: Text(
                            'I\'m a self-taught software engineer who enjoys crafting web and mobile applications on the internet using Javascript and Flutter. Having a good understanding of Flutter, I\'m able to build scalable applications on the web and craft from development to deployment on Android and iOS platforms, while rendering server-side applications with Node.js. I\'m always on the look out for technical and professional opportunies to improve my skill-set and experience for building an outstanding User Experience.',
                            style: _introFont,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          width: 220,
                          child: SecondaryIconButton(
                              title: 'View My Resume',
                           
                              bgColor: Colors.transparent,
                              bgColorOut: Colors.transparent,
                              titleColor: Colors.white,
                              titleColorIn: Colors.black,
                              titleColorOut: Colors.white,
                              myColor: Colors.white,
                              onPressed: resumeLink),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                      child: SizedBox(
                    width: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 56,
                        ),
                        Row(
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
                        SizedBox(
                          height: 10,
                        ),
                        GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 5,
                                    childAspectRatio: 2),
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
                                  Container(
                                    padding: EdgeInsets.fromLTRB(2, 0, 2, 4),
                                    width: 100,
                                    child: Text(
                                      stacks.title.toUpperCase(),
                                      style: _introFont2,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ],
                    ),
                  ))
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
