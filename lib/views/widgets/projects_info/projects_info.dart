// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey/models/projects_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProjectsInfo extends StatefulWidget {
  const ProjectsInfo({Key? key}) : super(key: key);

  @override
  State<ProjectsInfo> createState() => _ProjectsInfoState();
}

class _ProjectsInfoState extends State<ProjectsInfo> {
  final _titleFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 50,
      color: Colors.white,
      fontWeight: FontWeight.w600);

  final _infoFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w400);

  final _navButtonFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 18,
      color: Color.fromARGB(235, 255, 153, 0),
      letterSpacing: 0.41,
      fontWeight: FontWeight.w600);

  final projectsController = CarouselController();

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider.builder(
            carouselController: projectsController,
            options: CarouselOptions(
                height: 400,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
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
          SizedBox(height: 90),
          buildIndicator()
        ],
      ),
    );
  }

  Widget buildImage(myProjects, int index) => Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: Color.fromARGB(255, 21, 18, 27),
        ),
        width: 900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 800,
              child: FittedBox(
                child: Text(
                  'THE BACKYARD CONCERT',
                  style: _titleFont,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Platform - ${myProjects.platform}',
              style: _infoFont,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Technologies used - ${myProjects.stack}',
              style: _infoFont,
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 300,
              child: FittedBox(
                child: Row(
                  children: [
                    TextButton(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                        child: Row(
                          children: [
                            Text(
                              'Live',
                              style: _navButtonFont,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              FontAwesomeIcons.arrowUpRightFromSquare,
                              color: Color.fromARGB(235, 255, 153, 0),
                              size: 20,
                            )
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color.fromARGB(235, 255, 153, 0),
                            ),
                            borderRadius: BorderRadius.circular(6.0)),
                      ),
                    ),
                    TextButton(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                        child: Row(
                          children: [
                            Text(
                              'View code',
                              style: _navButtonFont,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              FontAwesomeIcons.github,
                              color: Color.fromARGB(235, 255, 153, 0),
                              size: 20,
                            )
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: projectsList.length,
        effect: JumpingDotEffect(
            dotWidth: 12,
            dotHeight: 12,
            activeDotColor: Colors.orange,
            dotColor: Colors.grey),
      );
}
