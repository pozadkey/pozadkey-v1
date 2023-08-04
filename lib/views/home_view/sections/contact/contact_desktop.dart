// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../widgets/buttons/link_icon.dart';
import '../../../widgets/buttons/primary_button.dart';

class ContactDesktop extends StatefulWidget {
  ContactDesktop({
    Key? key,
  }) : super(key: key);

  @override
  State<ContactDesktop> createState() => _ContactDesktopState();
}

class _ContactDesktopState extends State<ContactDesktop> {
  void _launchEmail() async {
    final url = Uri.parse('mailto:hello@pozadkey.com?subject=Hello');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchTwitter() async {
    final url = Uri.parse('https://twitter.com/pozadkey');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchLinkedIn() async {
    final url = Uri.parse('https://linkedin.com/in/damilare-ajakaiye');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final headerFont = TextStyle(
        fontSize: width >= 800 ? 70 : 35,
        color: const Color.fromARGB(255, 0, 0, 0),
        fontWeight: FontWeight.w700,
        letterSpacing: 0.5);

    final introFont = TextStyle(
        fontSize: 14,
        color: Color.fromARGB(255, 0, 0, 0),
        fontWeight: FontWeight.w400,
        height: 2,
        letterSpacing: 0.6);

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
                    width: 300,
                    child: PrimaryButton(
                      title: 'hello@pozadkey.com',
                      initalTextColor: Colors.white,
                      hoverInBgColor: Color.fromARGB(255, 2, 185, 130),
                      initialBgColor: Colors.black,
                      hoverInColor: Colors.black,
                      hoverOutBgColor: Colors.black,
                      hoverOutColor: Colors.white,
                      onPressed: _launchEmail,
                    )),
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
                      iconColor: Colors.black,
                      iconColorIn: Colors.white,
                      iconColorOut: Colors.black,
                      icon: FontAwesomeIcons.linkedinIn,
                      myColor: Colors.black,
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
                      iconColor: Colors.black,
                      iconColorIn: Colors.white,
                      iconColorOut: Colors.black,
                      icon: FontAwesomeIcons.twitter,
                      myColor: Colors.black,
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
