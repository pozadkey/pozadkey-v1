// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey/models/mobile_projects_model.dart';
import 'package:pozadkey/views/widgets/buttons/link_icon.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../models/web_projects_model.dart';

class MobileProjectsDesktop extends StatefulWidget {
  const MobileProjectsDesktop({Key? key}) : super(key: key);

  @override
  State<MobileProjectsDesktop> createState() => _MobileProjectsDesktopState();
}

class _MobileProjectsDesktopState extends State<MobileProjectsDesktop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final titleFont = TextStyle(
        fontSize: 24,
        color: Colors.black,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.3);

    final textFont = TextStyle(
        fontSize: 14,
        color: Color.fromARGB(218, 0, 0, 0),
        fontWeight: FontWeight.w500,
        letterSpacing: 0.3);

    final stackFont = TextStyle(
        fontSize: 12,
        color: Color.fromARGB(255, 2, 185, 130),
        // color: Colors.white,
        height: 1.5,
        letterSpacing: 0.3,
        fontWeight: FontWeight.w500);

    final imageFont = TextStyle(
        fontSize: 50,
        color: Colors.white,
        fontWeight: FontWeight.w800,
        letterSpacing: 0.5);

    openUrl(pageUrl) async {
      final url = Uri.parse(pageUrl);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return GridView.builder(
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            childAspectRatio: 3 / 2.4),
        itemCount: mobileProjectsList.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext ctx, index) {
          MobileProjectsModel mobileProjects = mobileProjectsList[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              mobileProjects.image.isEmpty
                  ? Container(
                      width: 500,
                      height: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          mobileProjects.title.toUpperCase(),
                          style: imageFont,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  : Container(
                      width: 500,
                      height: 270,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(mobileProjects.image),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(1),
                        color: Colors.white,
                      ),
                    ),
              SizedBox(
                height: 10,
              ),
              Text(
                mobileProjects.stack,
                style: stackFont,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                mobileProjects.title,
                style: titleFont,
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 500,
                child: Text(
                  mobileProjects.info,
                  style: textFont,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              mobileProjects.github.isEmpty
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LinkIcon(
                          widthSize: 13.0,
                          bgColor: Colors.transparent,
                          bgColorOut: Colors.transparent,
                          iconColor: Colors.black,
                          iconColorIn: Colors.white,
                          iconColorOut: Colors.black,
                          icon: FontAwesomeIcons.googlePlay,
                          myColor: Colors.black,
                          onPressed: () => openUrl(mobileProjects.playstore),
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
                          icon: FontAwesomeIcons.appStoreIos,
                          myColor: Colors.black,
                          onPressed: () => openUrl(mobileProjects.appstore),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LinkIcon(
                          widthSize: 13.0,
                          bgColor: Colors.transparent,
                          bgColorOut: Colors.transparent,
                          iconColor: Colors.black,
                          iconColorIn: Colors.white,
                          iconColorOut: Colors.black,
                          icon: FontAwesomeIcons.github,
                          myColor: Colors.black,
                          onPressed: () => openUrl(mobileProjects.github),
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
                          icon: FontAwesomeIcons.googlePlay,
                          myColor: Colors.black,
                          onPressed: () => openUrl(mobileProjects.playstore),
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
                          icon: FontAwesomeIcons.appStoreIos,
                          myColor: Colors.black,
                          onPressed: () => openUrl(mobileProjects.appstore),
                        ),
                      ],
                    )
            ],
          );
        });
  }
}
