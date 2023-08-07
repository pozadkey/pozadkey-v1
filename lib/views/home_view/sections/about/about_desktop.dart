// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pozadkey/models/stack_model.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../widgets/buttons/primary_button.dart';

class AboutDesktop extends StatefulWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  State<AboutDesktop> createState() => _AboutDesktopState();
}

class _AboutDesktopState extends State<AboutDesktop> {
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

    final stackFont = TextStyle(
        fontSize: 14,
        color: Color.fromRGBO(54, 54, 54, 1),
        letterSpacing: 0.3,
        fontWeight: FontWeight.w500);

    openUrl(pageUrl) async {
      final url = Uri.parse(pageUrl);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Container(
      height: 700,
      padding: width <= 1550
          ? EdgeInsets.fromLTRB(50, 0, 50, 0)
          : EdgeInsets.fromLTRB(200, 0, 200, 0),
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
                        style: headerFont,
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
                        style: introFont,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                        width: 180,
                        child: PrimaryButton(
                            title: 'View My Resume >',
                            initalTextColor: Colors.white,
                            hoverInBgColor: Color.fromRGBO(117, 117, 117, 1),
                            initialBgColor: Color.fromRGBO(54, 54, 54, 1),
                            hoverInColor: Colors.white,
                            hoverOutBgColor: Color.fromRGBO(54, 54, 54, 1),
                            hoverOutColor: Colors.white,
                            onPressed: () => openUrl(
                                'https://docs.google.com/document/d/1BYRWahLz8h9vvaDhzJEOKYsEBFVTO144_VZGHr-j-BA/edit?usp=sharing'))),
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
                    Text(
                      'Some of the technologies I\'ve worked with:',
                      style: introFont,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            childAspectRatio: 5),
                        itemCount: stackList.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (BuildContext ctx, index) {
                          StackModel stacks = stackList[index];
                          return Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: stacks.textBgdColor,
                                borderRadius: BorderRadius.circular(3.0)),
                            child: Text(
                              stacks.title,
                              style: stackFont,
                              textAlign: TextAlign.center,
                            ),
                          );
                        }),
                  ],
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
