// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey/models/tools_model.dart';
import 'package:pozadkey/views/widgets/buttons/link_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class ToolsPageDesktop extends StatefulWidget {
  const ToolsPageDesktop({Key? key}) : super(key: key);

  @override
  State<ToolsPageDesktop> createState() => _ToolsPageDesktopState();
}

class _ToolsPageDesktopState extends State<ToolsPageDesktop> {
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
        itemCount: toolsModelList.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext ctx, index) {
          ToolsModel tools = toolsModelList[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              tools.image.isEmpty
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
                          tools.title.toUpperCase(),
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
                              image: AssetImage(tools.image),
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
                  tools.stack,
                  style: stackFont,
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                tools.title,
                style: titleFont,
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 500,
                child: Text(
                  tools.info,
                  style: textFont,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              tools.github.isEmpty
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
                          icon: FontAwesomeIcons.arrowUpRightFromSquare,
                          myColor: Color.fromRGBO(54, 54, 54, 1),
                          onPressed: () => openUrl(tools.live),
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
                          onPressed: () => openUrl(tools.github),
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
                          icon: FontAwesomeIcons.arrowUpRightFromSquare,
                          myColor: Color.fromRGBO(54, 54, 54, 1),
                          onPressed: () => openUrl(tools.live),
                        ),
                      ],
                    )
            ],
          );
        });
  }
}
