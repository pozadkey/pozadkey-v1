import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../models/web_projects_model.dart';
import '../../../../../widgets/buttons/link_icon.dart';

class WebProjectsMobile extends StatefulWidget {
  const WebProjectsMobile({Key? key}) : super(key: key);

  @override
  State<WebProjectsMobile> createState() => _WebProjectsMobileState();
}

class _WebProjectsMobileState extends State<WebProjectsMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    const titleFont = TextStyle(
        fontSize: 18,
        color: Color.fromRGBO(54, 54, 54, 1),
        fontWeight: FontWeight.w600,
        letterSpacing: 0.2);

    const textFont = TextStyle(
        fontSize: 14,
        color: Color.fromRGBO(117, 117, 117, 1),
        fontWeight: FontWeight.w500,
        letterSpacing: 0.2);

    const stackFont = TextStyle(
        fontSize: 14,
        color: Color.fromRGBO(54, 54, 54, 1),
        letterSpacing: 0.3,
        fontWeight: FontWeight.w500);

    const imageFont = TextStyle(
        fontSize: 20,
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

    return ListView.builder(
      itemCount: webProjectsModelList.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (context, index) {
        WebProjectsModel webProjects = webProjectsModelList[index];
        return SizedBox(
          width: width >= 800 ? 500 : double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              webProjects.image.isEmpty
                  ? Container(
                      width: width < 478 ? 400 : 500,
                      height: width < 478 ? 230 : 300,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: const Color.fromRGBO(54, 54, 54, 1),
                          border: Border.all(
                              color: const Color.fromRGBO(114, 79, 79, 0.459),
                              width: 1)),
                      child: Center(
                        child: Text(
                          webProjects.title.toUpperCase(),
                          style: imageFont,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  : Container(
                      width: width < 478 ? 400 : 500,
                      height: width < 478 ? 230 : 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(webProjects.image),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                              color: const Color.fromRGBO(206, 206, 206, 0.459),
                              width: 1)),
                    ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 500,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(206, 206, 206, 0.699),
                          borderRadius: BorderRadius.circular(3.0)),
                      child: Text(
                        webProjects.stack,
                        style: stackFont,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 500,
                child: Text(
                  webProjects.title,
                  style: titleFont,
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 500,
                child: Text(
                  webProjects.info,
                  style: textFont,
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: 500,
                  child: webProjects.github.isEmpty
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LinkIcon(
                              widthSize: 13.0,
                              bgColor: Colors.transparent,
                              bgColorOut: Colors.transparent,
                              iconColor: const Color.fromRGBO(54, 54, 54, 1),
                              iconColorIn: Colors.white,
                              iconColorOut: const Color.fromRGBO(54, 54, 54, 1),
                              icon: FontAwesomeIcons.arrowUpRightFromSquare,
                              myColor: const Color.fromRGBO(54, 54, 54, 1),
                              onPressed: () => openUrl(webProjects.live),
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
                              iconColor: const Color.fromRGBO(54, 54, 54, 1),
                              iconColorIn: Colors.white,
                              iconColorOut: const Color.fromRGBO(54, 54, 54, 1),
                              icon: FontAwesomeIcons.github,
                              myColor: const Color.fromRGBO(54, 54, 54, 1),
                              onPressed: () => openUrl(webProjects.github),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            LinkIcon(
                              widthSize: 13.0,
                              bgColor: Colors.transparent,
                              bgColorOut: Colors.transparent,
                              iconColor: const Color.fromRGBO(54, 54, 54, 1),
                              iconColorIn: Colors.white,
                              iconColorOut: const Color.fromRGBO(54, 54, 54, 1),
                              icon: FontAwesomeIcons.arrowUpRightFromSquare,
                              myColor: const Color.fromRGBO(54, 54, 54, 1),
                              onPressed: () => openUrl(webProjects.live),
                            ),
                          ],
                        )),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        );
      },
    );
  }
}
