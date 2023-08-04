// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey/views/widgets/buttons/primary_button.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../widgets/buttons/link_icon.dart';
import '../../../widgets/buttons/my_icon_button.dart';
import '../../../widgets/buttons/secondary_icon_button.dart';
import '../../../widgets/buttons/secondary_large_button.dart';
import '../../../widgets/links/links.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({Key? key}) : super(key: key);

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  openUrl(pageUrl) async {
    final url = Uri.parse(pageUrl);
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
        fontWeight: FontWeight.w500,
        height: 2,
        letterSpacing: 0.6);

    return Container(
      height: 500,
      padding: width >= 800
          ? EdgeInsets.fromLTRB(110, 0, 110, 0)
          : EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 700,
            child: Text(
              'Work With Me',
              style: headerFont,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 650,
            child: Text(
              'Do you have an idea that you want to bring to life? Do not hesitate to get in touch. Let\'s build your next big project idea! ',
              style: introFont,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          FittedBox(
            child: SizedBox(
              width: 300,
              child: PrimaryButton(
                  title: 'hello@pozadkey.com',
                  initalTextColor: Colors.white,
                  hoverInBgColor: Color.fromARGB(255, 2, 185, 130),
                  initialBgColor: Colors.black,
                  hoverInColor: Colors.black,
                  hoverOutBgColor: Colors.black,
                  hoverOutColor: Colors.white,
                  onPressed: () =>
                      openUrl('mailto:hello@pozadkey.com?subject=Hello')),
            ),
          ),
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
    );
  }
}
