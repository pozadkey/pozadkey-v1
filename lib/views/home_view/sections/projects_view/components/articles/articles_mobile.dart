import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey/models/articles_model.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../widgets/buttons/link_icon.dart';

class ArticlesMobile extends StatefulWidget {
  const ArticlesMobile({Key? key}) : super(key: key);

  @override
  State<ArticlesMobile> createState() => _ArticlesMobileState();
}

class _ArticlesMobileState extends State<ArticlesMobile> {
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
        fontSize: 24,
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
          itemCount: articlesModelList.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder: (context, index) {
            ArticlesModel articles = articlesModelList[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 500,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    color: Colors.black,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        articles.title.toUpperCase(),
                        style: imageFont,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                LinkIcon(
                  widthSize: 13.0,
                  bgColor: Colors.transparent,
                  bgColorOut: Colors.transparent,
                  iconColor: Colors.black,
                  iconColorIn: Colors.white,
                  iconColorOut: Colors.black,
                  icon: FontAwesomeIcons.arrowUpRightFromSquare,
                  myColor: Colors.black,
                  onPressed: () => openUrl(articles.live),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            );
          }),
    );
  }
}
