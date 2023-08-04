// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:pozadkey/views/home_view/sections/projects_view/components/articles/articles.dart';
import 'package:pozadkey/views/home_view/sections/projects_view/components/mobile_projects/mobile_projects.dart';
import 'package:pozadkey/views/widgets/buttons/secondary_icon_button.dart';
import '../../../widgets/buttons/primary_button.dart';
import 'components/web_projects/web_projects.dart';

class ProjectsTabDesktop extends StatefulWidget {
  const ProjectsTabDesktop({Key? key}) : super(key: key);

  @override
  State<ProjectsTabDesktop> createState() => _ProjectsTabDesktopState();
}

class _ProjectsTabDesktopState extends State<ProjectsTabDesktop> {
  @override
  void initState() {
    super.initState();
  }

  Widget defaultProj = WebProjects();
  Widget webProj = WebProjects();
  Widget mobileProj = MobileProjects();
  Widget articleProj = Articles();

  bool isWeb = true;
  bool isMobile = false;
  bool isArticle = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final headerFont = TextStyle(
        fontSize: width >= 800 ? 70 : 35,
        color: Color.fromARGB(255, 0, 0, 0),
        fontWeight: FontWeight.w700,
        letterSpacing: 0.5);

    return Container(
      padding: width <= 1550
          ? EdgeInsets.fromLTRB(50, 15, 50, 15)
          : EdgeInsets.fromLTRB(200, 15, 200, 15),
      //height: 1000,
      width: 2000,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 500,
            child: Text(
              'Projects',
              style: headerFont,
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 100,
                child: SecondaryIconButton(
                  title: 'Web',
                  bgColor: isWeb == true ? Colors.black : Colors.transparent,
                  bgColorOut: isWeb == true ? Colors.black : Colors.transparent,
                  titleColor: isWeb == true ? Colors.white : Colors.black,
                  titleColorIn: Colors.white,
                  titleColorOut: isWeb == true ? Colors.white : Colors.black,
                  myColor: Colors.black,
                  onPressed: () {
                    setState(() {
                      defaultProj = webProj;
                      isWeb = true;
                      isMobile = false;
                      isArticle = false;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 100,
                child: SecondaryIconButton(
                  title: 'Mobile',
                  bgColor: isMobile == true ? Colors.black : Colors.transparent,
                  bgColorOut:
                      isMobile == true ? Colors.black : Colors.transparent,
                  titleColor: isMobile == true ? Colors.white : Colors.black,
                  titleColorIn: Colors.white,
                  titleColorOut: isMobile == true ? Colors.white : Colors.black,
                  myColor: Colors.black,
                  onPressed: () {
                    setState(() {
                      defaultProj = mobileProj;
                      isWeb = false;
                      isMobile = true;
                      isArticle = false;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 110,
                child: SecondaryIconButton(
                  title: 'Articles',
                  bgColor:
                      isArticle == true ? Colors.black : Colors.transparent,
                  bgColorOut:
                      isArticle == true ? Colors.black : Colors.transparent,
                  titleColor: isArticle == true ? Colors.white : Colors.black,
                  titleColorIn: Colors.white,
                  titleColorOut:
                      isArticle == true ? Colors.white : Colors.black,
                  myColor: Colors.black,
                  onPressed: () {
                    setState(() {
                      defaultProj = articleProj;
                      isWeb = false;
                      isMobile = false;
                      isArticle = true;
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          defaultProj
        ],
      ),
    );
  }
}
