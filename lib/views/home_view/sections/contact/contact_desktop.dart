// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../widgets/buttons/link_icon.dart';
import '../../../widgets/buttons/primary_icon_button.dart';

class ContactDesktop extends StatefulWidget {
  const ContactDesktop({
    Key? key,
  }) : super(key: key);

  @override
  State<ContactDesktop> createState() => _ContactDesktopState();
}

class _ContactDesktopState extends State<ContactDesktop> {
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

    openUrl(pageUrl) async {
      final url = Uri.parse(pageUrl);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return SizedBox(
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
                      'Work With Me',
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
                    'Do you have an idea that you want to bring to life? Do not hesitate to get in touch. Let\'s build your next big project idea! ',
                    style: introFont,
                    textAlign: TextAlign.center,
                  )),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                    width: 200,
                    child: PrimaryIconButton(
                        title: 'hello@pozadkey.com',
                        icon: FontAwesomeIcons.solidMessage,
                        size: 15,
                        initalTextColor: Colors.white,
                        hoverInBgColor: Color.fromRGBO(117, 117, 117, 1),
                        initialBgColor: Color.fromRGBO(54, 54, 54, 1),
                        hoverInColor: Colors.white,
                        hoverOutBgColor: Color.fromRGBO(54, 54, 54, 1),
                        hoverOutColor: Colors.white,
                        onPressed: () => openUrl(
                            'mailto:hello@pozadkey.com?subject=Hello'))),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LinkIcon(
                      widthSize: 13.0,
                      bgColor: Colors.transparent,
                      bgColorOut: Colors.transparent,
                      iconColor: Color.fromRGBO(54, 54, 54, 1),
                      iconColorIn: Colors.white,
                      iconColorOut: Color.fromRGBO(54, 54, 54, 1),
                      icon: FontAwesomeIcons.linkedinIn,
                      myColor: Color.fromRGBO(54, 54, 54, 1),
                      onPressed: () =>
                          openUrl('https://linkedin.com/in/damilare-ajakaiye'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    LinkIcon(
                      widthSize: 13.0,
                      bgColor: Colors.transparent,
                      bgColorOut: Colors.transparent,
                      iconColor: Color.fromRGBO(54, 54, 54, 1),
                      iconColorIn: Colors.white,
                      iconColorOut: Color.fromRGBO(54, 54, 54, 1),
                      icon: FontAwesomeIcons.twitter,
                      myColor: Color.fromRGBO(54, 54, 54, 1),
                      onPressed: () => openUrl('https://twitter.com/pozadkey'),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
