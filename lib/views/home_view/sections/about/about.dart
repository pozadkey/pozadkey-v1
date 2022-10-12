// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey/models/stack_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../widgets/buttons/secondary_icon_button.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final _subFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w400);

  final _nameFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 50,
      color: Colors.white,
      fontWeight: FontWeight.w500);

  final _introFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
      color: Colors.grey[400],
      fontWeight: FontWeight.w400);

  void resumeLink() {
    final url = Uri.parse(
        'https://docs.google.com/document/d/1LJjmJ634Wws7OWc-ceXbZPJEKaqvNuHSmQ0af6RQ5gQ');
    launchUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 600,
      padding: EdgeInsets.fromLTRB(200, 50, 200, 250),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black,
            Colors.black,
          ],
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
          opacity: 0.15,
          image: AssetImage('assets/images/dark1.JPG'),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 480,
                  child: Text(
                    'About Me',
                    style: _nameFont,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 480,
                  child: Text(
                    'Hello! My name is Damilare and I\'m a self-taught software engineer who enjoys crafting web and mobile applications on the internet using Javascript and Flutter. Having a good understanding of Flutter, HTML and CSS, I\'m able to build scaleable applications on the web and craft from development to deployment on Android and iOS platforms, while rendering server-side applications with Node.js. I\'m always on the look out for technical and professional opportunies to improve my skill-set and experience for building an outstanding User Experience.',
                    style: _introFont,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 220,
                  child: SecondaryIconButton(
                      title: 'View My Résumé',
                      icon: FontAwesomeIcons.fileLines,
                      bgColor: Colors.transparent,
                      bgColorOut: Colors.transparent,
                      titleColor: Color.fromARGB(247, 252, 118, 8),
                      titleColorIn: Colors.white,
                      titleColorOut: Color.fromARGB(247, 252, 118, 8),
                      myColor: Color.fromARGB(247, 252, 118, 8),
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
                      color: Color.fromARGB(247, 252, 118, 8),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 0,
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
                            padding: EdgeInsets.fromLTRB(5, 8, 5, 8),
                            width: 120,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 23, 23, 23),
                                border: Border.all(
                                  color: Color.fromARGB(255, 23, 23, 23),
                                ),
                                borderRadius: BorderRadius.circular(2.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  FontAwesomeIcons.boltLightning,
                                  color: Color.fromARGB(247, 252, 118, 8),
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  stacks.title,
                                  style: _introFont,
                                  textAlign: TextAlign.center,
                                ),
                              ],
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
    );
  }
}
