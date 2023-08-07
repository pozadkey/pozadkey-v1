// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey/models/mobile_projects_model.dart';
import 'package:pozadkey/views/widgets/buttons/link_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileProjectsDesktop extends StatefulWidget {
  const MobileProjectsDesktop({Key? key}) : super(key: key);

  @override
  State<MobileProjectsDesktop> createState() => _MobileProjectsDesktopState();
}

class _MobileProjectsDesktopState extends State<MobileProjectsDesktop> {
  @override
  Widget build(BuildContext context) {
    final titleFont = TextStyle(
        fontSize: 18,
        color: Color.fromRGBO(54, 54, 54, 1),
        fontWeight: FontWeight.w600,
        letterSpacing: 0.2);

    final textFont = TextStyle(
        fontSize: 14,
        color: Color.fromRGBO(117, 117, 117, 1),
        fontWeight: FontWeight.w500,
        letterSpacing: 0.2);

    final stackFont = TextStyle(
        fontSize: 14,
        color: Color.fromRGBO(54, 54, 54, 1),
        letterSpacing: 0.3,
        fontWeight: FontWeight.w500);

    final imageFont = TextStyle(
        fontSize: 24,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.3);

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
                      height: 300,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Color.fromRGBO(54, 54, 54, 1),
                          border: Border.all(
                              color: Color.fromRGBO(206, 206, 206, 0.459),
                              width: 1)),
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
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(mobileProjects.image),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                              color: Color.fromRGBO(206, 206, 206, 0.459),
                              width: 1)),
                    ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(206, 206, 206, 0.699),
                    borderRadius: BorderRadius.circular(3.0)),
                child: Text(
                  mobileProjects.stack,
                  style: stackFont,
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 10,
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
                          iconColor: Color.fromRGBO(54, 54, 54, 1),
                          iconColorIn: Colors.white,
                          iconColorOut: Color.fromRGBO(54, 54, 54, 1),
                          icon: FontAwesomeIcons.googlePlay,
                          myColor: Color.fromRGBO(54, 54, 54, 1),
                          onPressed: () => openUrl(mobileProjects.playstore),
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
                          icon: FontAwesomeIcons.appStoreIos,
                          myColor: Color.fromRGBO(54, 54, 54, 1),
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
                          iconColor: Color.fromRGBO(54, 54, 54, 1),
                          iconColorIn: Colors.white,
                          iconColorOut: Color.fromRGBO(54, 54, 54, 1),
                          icon: FontAwesomeIcons.github,
                          myColor: Color.fromRGBO(54, 54, 54, 1),
                          onPressed: () => openUrl(mobileProjects.github),
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
                          icon: FontAwesomeIcons.googlePlay,
                          myColor: Color.fromRGBO(54, 54, 54, 1),
                          onPressed: () => openUrl(mobileProjects.playstore),
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
                          icon: FontAwesomeIcons.appStoreIos,
                          myColor: Color.fromRGBO(54, 54, 54, 1),
                          onPressed: () => openUrl(mobileProjects.appstore),
                        ),
                      ],
                    )
            ],
          );
        });
  }
}
