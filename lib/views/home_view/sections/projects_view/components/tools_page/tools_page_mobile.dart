import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey/models/tools_model.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../widgets/buttons/link_icon.dart';

class ToolsPageMobile extends StatefulWidget {
  const ToolsPageMobile({Key? key}) : super(key: key);

  @override
  State<ToolsPageMobile> createState() => _ToolsPageMobileState();
}

class _ToolsPageMobileState extends State<ToolsPageMobile> {
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
      itemCount: toolsModelList.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (context, index) {
        ToolsModel tools = toolsModelList[index];
        return SizedBox(
          width: width >= 800 ? 500 : double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              tools.image.isEmpty
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
                          tools.title.toUpperCase(),
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
                              image: AssetImage(tools.image),
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
                        tools.stack,
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
                  tools.title,
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
                  tools.info,
                  style: textFont,
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: 500,
                  child: tools.github.isEmpty
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
                              iconColor: const Color.fromRGBO(54, 54, 54, 1),
                              iconColorIn: Colors.white,
                              iconColorOut: const Color.fromRGBO(54, 54, 54, 1),
                              icon: FontAwesomeIcons.github,
                              myColor: const Color.fromRGBO(54, 54, 54, 1),
                              onPressed: () => openUrl(tools.github),
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
                              onPressed: () => openUrl(tools.live),
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
