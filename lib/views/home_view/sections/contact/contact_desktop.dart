// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../widgets/buttons/my_icon_button.dart';
import '../../../widgets/buttons/secondary_icon_button.dart';
import '../../../widgets/buttons/secondary_large_button.dart';
import '../../../widgets/links/links.dart';

class ContactDesktop extends StatefulWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  State<ContactDesktop> createState() => _ContactDesktopState();
}

class _ContactDesktopState extends State<ContactDesktop> {
  final _headerFont = TextStyle(
      fontSize: 100,
      color: Colors.white,
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

    return Container(
      height: 750,
      padding: width <= 1550
          ? EdgeInsets.fromLTRB(50, 15, 50, 15)
          : EdgeInsets.fromLTRB(200, 15, 200, 15),
      width: 2000,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SAY HELLO!',
            style: subIntroFont,
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 500,
            child: Text(
              'Contact',
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
              'Do you have an idea that you want to bring to life? Do not hesitate to get in touch. Let\'s build your next big project idea! ',
              style: _introFont,
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'SEND ME A MESSAGE!',
            style: subIntroFont,
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 700,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 350,
                  child: FittedBox(
                    child: SecondaryLargeButton(
                      bgColor: Colors.transparent,
                      bgColorOut: Colors.transparent,
                      titleColor: Colors.white,
                      titleColorIn: Colors.black,
                      titleColorOut: Colors.white,
                      myColor: Colors.white,
                      title: 'hello@pozadkey.com',
                      onPressed: _launchEmail,
                    ),
                  ),
                ),
                Row(
                  children: [
                    MyIconButton(
                        icon: Icon(FontAwesomeIcons.linkedinIn),
                        initialColor: Colors.white,
                        hoverInColor: Color.fromARGB(255, 213, 252, 121),
                        hoverOutColor: Colors.white,
                        onPressed: _launchLinkedIn),
                    MyIconButton(
                        icon: Icon(FontAwesomeIcons.twitter),
                        initialColor: Colors.white,
                        hoverInColor: Color.fromARGB(255, 213, 252, 121),
                        hoverOutColor: Colors.white,
                        onPressed: _launchTwitter),
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
