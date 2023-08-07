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

    return Container(
      padding: width >= 800
          ? const EdgeInsets.fromLTRB(110, 0, 110, 0)
          : const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: ListView.builder(
          itemCount: articlesModelList.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (context, index) {
            ArticlesModel articles = articlesModelList[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: width < 478 ? 400 : 500,
                  height: width < 478 ? 230 : 300,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color.fromRGBO(54, 54, 54, 1),
                      border: Border.all(
                          color: const Color.fromRGBO(206, 206, 206, 0.459),
                          width: 1)),
                  child: Center(
                    child: Text(
                      articles.title.toUpperCase(),
                      style: imageFont,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                  onPressed: () => openUrl(articles.live),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            );
          }),
    );
  }
}
