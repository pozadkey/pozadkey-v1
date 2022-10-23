// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey/models/projects_model.dart';
import 'package:pozadkey/views/widgets/buttons/my_icon_button.dart';
import 'package:pozadkey/views/widgets/buttons/select_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsInfoDesktop extends StatefulWidget {
  const ProjectsInfoDesktop({Key? key}) : super(key: key);

  @override
  State<ProjectsInfoDesktop> createState() => _ProjectsInfoDesktopState();
}

class _ProjectsInfoDesktopState extends State<ProjectsInfoDesktop> {
  final _titleFont = TextStyle(
      fontSize: 40,
      color: Colors.white,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5);

  final _headerFont = TextStyle(
      fontSize: 100,
      color: Colors.white,
      fontWeight: FontWeight.w800,
      letterSpacing: 0.5);

  final subIntroFont = TextStyle(
      fontSize: 12,
      color: Color.fromARGB(255, 202, 205, 212),
      letterSpacing: 0.3,
      fontWeight: FontWeight.w500);

  final _introFont = TextStyle(
      fontSize: 14,
      color: Color.fromARGB(255, 202, 205, 212),
      fontWeight: FontWeight.w400,
      height: 2,
      letterSpacing: 0.6);

  final _introFont2 = TextStyle(
      fontSize: 11,
      height: 2,
      color: Color.fromARGB(255, 202, 205, 212),
      fontWeight: FontWeight.w500,
      letterSpacing: 0.6);

  final projectsController = CarouselController();

  int activeIndex = 0;

  void nextProj() => projectsController.nextPage();

  void prevProj() => projectsController.previousPage();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: width <= 1550
          ? EdgeInsets.fromLTRB(50, 200, 50, 70)
          : EdgeInsets.fromLTRB(200, 200, 200, 70),
      width: 2000,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SELECTED',
                    style: subIntroFont,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Work',
                    style: _headerFont,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          CarouselSlider.builder(
            carouselController: projectsController,
            options: CarouselOptions(
                height: 830,
                initialPage: 0,
                viewportFraction: 1,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 10),
                enlargeCenterPage: false,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                }),
            itemCount: projectsList.length,
            itemBuilder: (context, index, realIndex) {
              final myProjects = projectsList[index];
              return buildImage(myProjects, index);
            },
          ),
          SizedBox(height: 20),
          buildIndicator(),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectButton(
                icon: FontAwesomeIcons.arrowLeft,
                initalTextColor: Colors.black,
                initialBgColor: Colors.white,
                hoverInColor: Colors.black,
                hoverInBgColor: Color.fromARGB(255, 213, 252, 121),
                hoverOutColor: Colors.black,
                hoverOutBgColor: Colors.white,
                onPressed: prevProj,
              ),
              SizedBox(width: 15),
              SelectButton(
                icon: FontAwesomeIcons.arrowRight,
                initalTextColor: Colors.black,
                initialBgColor: Colors.white,
                hoverInColor: Colors.black,
                hoverInBgColor: Color.fromARGB(255, 213, 252, 121),
                hoverOutColor: Colors.black,
                hoverOutBgColor: Colors.white,
                onPressed: nextProj,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildImage(myProjects, int index) => SizedBox(
        width: 800,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                color: Color.fromARGB(255, 15, 15, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(myProjects.image),
                            fit: BoxFit.cover),
                      ),
                      height: 450,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      myProjects.stack.toUpperCase(),
                      style: _introFont2,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      myProjects.title,
                      style: _titleFont,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      myProjects.info,
                      style: _introFont,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        myProjects.github.isEmpty
                            ? Container()
                            : MyIconButton(
                                icon: Icon(
                                  FontAwesomeIcons.github,
                                  size: 20,
                                ),
                                initialColor: Colors.white,
                                hoverInColor:
                                    Color.fromARGB(255, 213, 252, 121),
                                hoverOutColor: Colors.white,
                                onPressed: () async {
                                  final url = Uri.parse(myProjects.github);
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                }),
                        myProjects.playstore.isEmpty
                            ? Container()
                            : MyIconButton(
                                icon: Icon(
                                  FontAwesomeIcons.googlePlay,
                                  size: 20,
                                ),
                                initialColor: Colors.white,
                                hoverInColor:
                                    Color.fromARGB(255, 213, 252, 121),
                                hoverOutColor: Colors.white,
                                onPressed: () async {
                                  final url = Uri.parse(myProjects.playstore);
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                }),
                        myProjects.appstore.isEmpty
                            ? Container()
                            : MyIconButton(
                                icon: Icon(
                                  FontAwesomeIcons.appStoreIos,
                                  size: 20,
                                ),
                                initialColor: Colors.white,
                                hoverInColor:
                                    Color.fromARGB(255, 213, 252, 121),
                                hoverOutColor: Colors.white,
                                onPressed: () async {
                                  final url = Uri.parse(myProjects.appstore);
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                }),
                        myProjects.live.isEmpty
                            ? Container()
                            : MyIconButton(
                                icon: Icon(
                                  FontAwesomeIcons.arrowUpRightFromSquare,
                                  size: 20,
                                ),
                                initialColor: Colors.white,
                                hoverInColor:
                                    Color.fromARGB(255, 213, 252, 121),
                                hoverOutColor: Colors.white,
                                onPressed: () async {
                                  final url = Uri.parse(myProjects.live);
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                }),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: projectsList.length,
        effect: ExpandingDotsEffect(
          dotWidth: 12,
          dotHeight: 12,
          activeDotColor: Colors.white,
          dotColor: Color.fromARGB(255, 52, 52, 52),
        ),
      );
}
