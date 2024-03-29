// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../models/stack_model.dart';
import '../../../widgets/buttons/primary_button.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
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
        width: double.infinity,
        // height: 1000,
        padding: width >= 800
            ? EdgeInsets.fromLTRB(110, 0, 110, 0)
            : EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 600,
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
              width: width >= 800 ? 700 : 700,
              child: Text(
                'Hello! My name is Damilare and I\'m a self-taught software engineer who enjoys crafting web and mobile applications on the internet using Javascript and Flutter. Having a good understanding of Flutter, I\'m able to build scalable applications on the web and craft from development to deployment on Android and iOS platforms, while rendering server-side applications with Node.js. I\'m always on the look out for technical and professional opportunies to improve my skill-set and experience for building an outstanding User Experience.',
                style: introFont,
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FittedBox(
              child: SizedBox(
                child: PrimaryButton(
                    title: 'View My Resume >',
                    initalTextColor: Colors.white,
                    hoverInBgColor: Color.fromRGBO(117, 117, 117, 1),
                    initialBgColor: Color.fromRGBO(54, 54, 54, 1),
                    hoverInColor: Colors.white,
                    hoverOutBgColor: Color.fromRGBO(54, 54, 54, 1),
                    hoverOutColor: Colors.white,
                    onPressed: () => openUrl(
                        'https://docs.google.com/document/d/1BYRWahLz8h9vvaDhzJEOKYsEBFVTO144_VZGHr-j-BA/edit?usp=sharing')),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FittedBox(
              child: SizedBox(
                child: Text(
                  'Some of the technologies I\'ve worked with:',
                  style: introFont,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: width >= 500 ? 7 : 4,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 2.1
                      //width >= 200 && width <= 1200 ? 6 / 3 : 6 / 3,
                      ),
                  itemCount: stackList.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (BuildContext ctx, index) {
                    StackModel stacks = stackList[index];
                    return Container(
                      //width: width >= 800 ? 120 : 100,
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
            )
          ],
        ));
  }
}
