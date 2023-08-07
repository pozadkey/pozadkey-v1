// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey/models/articles_model.dart';
import 'package:pozadkey/views/widgets/buttons/link_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticlesDesktop extends StatefulWidget {
  const ArticlesDesktop({Key? key}) : super(key: key);

  @override
  State<ArticlesDesktop> createState() => _ArticlesDesktopState();
}

class _ArticlesDesktopState extends State<ArticlesDesktop> {
  @override
  Widget build(BuildContext context) {
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
        itemCount: articlesModelList.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext ctx, index) {
          ArticlesModel articles = articlesModelList[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 500,
                height: 300,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color.fromRGBO(54, 54, 54, 1),
                    border: Border.all(
                        color: Color.fromRGBO(206, 206, 206, 0.459), width: 1)),
                child: Center(
                  child: Text(
                    articles.title.toUpperCase(),
                    style: imageFont,
                    textAlign: TextAlign.center,
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
                iconColor: Color.fromRGBO(54, 54, 54, 1),
                iconColorIn: Colors.white,
                iconColorOut: Color.fromRGBO(54, 54, 54, 1),
                icon: FontAwesomeIcons.arrowUpRightFromSquare,
                myColor: Color.fromRGBO(54, 54, 54, 1),
                onPressed: () => openUrl(articles.live),
              ),
            ],
          );
        });
  }
}
