import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey/models/mobile_projects_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../models/web_projects_model.dart';
import '../../../../../widgets/buttons/link_icon.dart';

class MobileProjectsMobile extends StatefulWidget {
  const MobileProjectsMobile({Key? key}) : super(key: key);

  @override
  State<MobileProjectsMobile> createState() => _MobileProjectsMobileState();
}

class _MobileProjectsMobileState extends State<MobileProjectsMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final titleFont = TextStyle(
        fontSize: 18,
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

    return Container(
      padding: width >= 800
          ? EdgeInsets.fromLTRB(110, 0, 110, 0)
          : EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: ListView.builder(
        itemCount: mobileProjectsList.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (context, index) {
          MobileProjectsModel mobileProjects = mobileProjectsList[index];
          return Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
            width: width >= 800 ? 500 : double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                mobileProjects.image.isEmpty
                    ? Container(
                        width: 500,
                        height: 200,
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
                        height: 200,
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
                Container(
                  width: 500,
                  child: Text(
                    mobileProjects.stack,
                    style: stackFont,
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 500,
                  child: Text(
                    mobileProjects.title,
                    style: titleFont,
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 500,
                  child: Text(
                    mobileProjects.info,
                    style: textFont,
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: 500,
                    child: mobileProjects.github.isEmpty
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
                                onPressed: () =>
                                    openUrl(mobileProjects.playstore),
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
                                onPressed: () =>
                                    openUrl(mobileProjects.appstore),
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
                                onPressed: () =>
                                    openUrl(mobileProjects.playstore),
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
                                onPressed: () =>
                                    openUrl(mobileProjects.appstore),
                              ),
                            ],
                          )),
              ],
            ),
          );
        },
      ),
    );
  }
}
