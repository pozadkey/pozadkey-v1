// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey/models/projects_model.dart';
import 'package:pozadkey/views/widgets/buttons/my_icon_button.dart';
import 'package:pozadkey/views/widgets/buttons/select_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsInfoMobile extends StatefulWidget {
  const ProjectsInfoMobile({Key? key}) : super(key: key);

  @override
  State<ProjectsInfoMobile> createState() => _ProjectsInfoMobileState();
}

class _ProjectsInfoMobileState extends State<ProjectsInfoMobile> {
  final _titleFont = TextStyle(
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.w600,
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

  final _headerFont2 = TextStyle(
      fontSize: 50,
      color: Colors.white,
      fontWeight: FontWeight.w800,
      letterSpacing: 0.5);

  final projectsController = CarouselController();

  int activeIndex = 0;

  void nextProj() => projectsController.nextPage();

  void prevProj() => projectsController.previousPage();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final _headerFont = TextStyle(
        fontSize: width >= 500 ? 100 : 50,
        color: Colors.white,
        fontWeight: FontWeight.w800,
        letterSpacing: 0.5);

    return Container(
      padding: width >= 800
          ? EdgeInsets.fromLTRB(110, 100, 110, 100)
          : EdgeInsets.fromLTRB(20, 100, 20, 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
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
          SizedBox(
            height: 20,
          ),
          CarouselSlider.builder(
            carouselController: projectsController,
            options: CarouselOptions(
                height: width <= 290 ? 700 : 600,
                initialPage: 0,
                viewportFraction: 1,
                enlargeCenterPage: false,
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
          SizedBox(
            height: width <= 290 ? 5 : 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildIndicator(),
            ],
          ),
          SizedBox(
            height: width <= 290 ? 20 : 40,
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  child: SelectButton(
                    icon: FontAwesomeIcons.arrowLeft,
                    initalTextColor: Colors.black,
                    initialBgColor: Colors.white,
                    hoverInColor: Colors.white,
                    hoverInBgColor: Color.fromARGB(255, 213, 252, 121),
                    hoverOutColor: Colors.black,
                    hoverOutBgColor: Colors.white,
                    onPressed: prevProj,
                  ),
                ),
                SizedBox(width: 15),
                FittedBox(
                  child: SelectButton(
                    icon: FontAwesomeIcons.arrowRight,
                    initalTextColor: Colors.black,
                    initialBgColor: Colors.white,
                    hoverInColor: Colors.white,
                    hoverInBgColor: Color.fromARGB(255, 213, 252, 121),
                    hoverOutColor: Colors.black,
                    hoverOutBgColor: Colors.white,
                    onPressed: nextProj,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildImage(myProjects, int index) => SizedBox(
        //width: 800,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(18),
                color: Color.fromARGB(255, 12, 12, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    myProjects.image.isEmpty
                        ? Center(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                              child: Text(
                                'NODE-AUTH',
                                style: _headerFont2,
                              ),
                            ),
                          )
                        : Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(myProjects.image),
                                  scale: 20,
                                  fit: BoxFit.contain),
                            ),
                            width: double.infinity,
                            height: 200),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      myProjects.stack.toUpperCase(),
                      style: _introFont2,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      myProjects.title,
                      style: _titleFont,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      myProjects.info,
                      style: _introFont,
                    ),
                    SizedBox(
                      height: 10,
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
          dotColor: Color.fromARGB(255, 40, 40, 40),
        ),
      );
}
