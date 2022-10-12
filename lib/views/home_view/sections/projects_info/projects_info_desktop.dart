// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey/models/projects_model.dart';
import 'package:pozadkey/views/widgets/buttons/my_icon_button.dart';
import 'package:pozadkey/views/widgets/buttons/select_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../widgets/buttons/primary_button.dart';
import '../../../widgets/buttons/secondary_icon_button.dart';

class ProjectsInfoDesktop extends StatefulWidget {
  const ProjectsInfoDesktop({Key? key}) : super(key: key);

  @override
  State<ProjectsInfoDesktop> createState() => _ProjectsInfoDesktopState();
}

class _ProjectsInfoDesktopState extends State<ProjectsInfoDesktop> {
  final _titleFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 40,
      color: Colors.white,
      fontWeight: FontWeight.w500);

  final _headerFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 50,
      color: Colors.white,
      fontWeight: FontWeight.w500);

  final _infoFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
      color: Colors.grey[400],
      fontWeight: FontWeight.w400);

  final _platFormFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w400);

  final projectsController = CarouselController();

  int activeIndex = 0;

  void nextProj() => projectsController.nextPage();

  void prevProj() => projectsController.previousPage();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(150, 0, 150, 100),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
          opacity: 0.15,
          image: AssetImage('assets/images/dark1.JPG'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Featured Projects',
            style: _headerFont,
          ),
          SizedBox(
            height: 40,
          ),
          CarouselSlider.builder(
            carouselController: projectsController,
            options: CarouselOptions(
                height: 500,
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
          SizedBox(height: 40),
          buildIndicator(),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectButton(
                icon: FontAwesomeIcons.arrowLeft,
                initalTextColor: Colors.white,
                initialBgColor: Color.fromARGB(247, 252, 118, 8),
                hoverInColor: Colors.black,
                hoverInBgColor: Colors.white,
                hoverOutColor: Colors.white,
                hoverOutBgColor: Color.fromARGB(247, 252, 118, 8),
                onPressed: prevProj,
              ),
              SizedBox(width: 15),
              SelectButton(
                icon: FontAwesomeIcons.arrowRight,
                initalTextColor: Colors.white,
                initialBgColor: Color.fromARGB(247, 252, 118, 8),
                hoverInColor: Colors.black,
                hoverInBgColor: Colors.white,
                hoverOutColor: Colors.white,
                hoverOutBgColor: Color.fromARGB(247, 252, 118, 8),
                onPressed: nextProj,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildImage(myProjects, int index) => Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 14, 14, 14),
        ),
        width: 850,
        padding: EdgeInsets.all(50),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            myProjects.platform,
                            style: _platFormFont,
                          ),
                          Row(
                            children: [
                              myProjects.github.isEmpty
                                  ? Container()
                                  : MyIconButton(
                                      icon: Icon(FontAwesomeIcons.github),
                                      initialColor:
                                          Color.fromARGB(247, 252, 118, 8),
                                      hoverInColor: Colors.white,
                                      hoverOutColor:
                                          Color.fromARGB(247, 252, 118, 8),
                                      onPressed: () async {
                                        final url =
                                            Uri.parse(myProjects.github);
                                        if (await canLaunchUrl(url)) {
                                          await launchUrl(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      }),
                              myProjects.playstore.isEmpty
                                  ? Container()
                                  : MyIconButton(
                                      icon: Icon(FontAwesomeIcons.googlePlay),
                                      initialColor:
                                          Color.fromARGB(247, 252, 118, 8),
                                      hoverInColor: Colors.white,
                                      hoverOutColor:
                                          Color.fromARGB(247, 252, 118, 8),
                                      onPressed: () async {
                                        final url =
                                            Uri.parse(myProjects.playstore);
                                        if (await canLaunchUrl(url)) {
                                          await launchUrl(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      }),
                              myProjects.appstore.isEmpty
                                  ? Container()
                                  : MyIconButton(
                                      icon: Icon(FontAwesomeIcons.appStoreIos),
                                      initialColor:
                                          Color.fromARGB(247, 252, 118, 8),
                                      hoverInColor: Colors.white,
                                      hoverOutColor:
                                          Color.fromARGB(247, 252, 118, 8),
                                      onPressed: () async {
                                        final url =
                                            Uri.parse(myProjects.appstore);
                                        if (await canLaunchUrl(url)) {
                                          await launchUrl(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      }),
                              myProjects.live.isEmpty
                                  ? Container()
                                  : MyIconButton(
                                      icon: Icon(FontAwesomeIcons
                                          .arrowUpRightFromSquare),
                                      initialColor:
                                          Color.fromARGB(247, 252, 118, 8),
                                      hoverInColor: Colors.white,
                                      hoverOutColor:
                                          Color.fromARGB(247, 252, 118, 8),
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
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        myProjects.title,
                        style: _titleFont,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        myProjects.info,
                        style: _infoFont,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                            width: 100,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 23, 23, 23),
                                border: Border.all(
                                  color: Color.fromARGB(255, 23, 23, 23),
                                ),
                                borderRadius: BorderRadius.circular(2.0)),
                            child: Text(
                              myProjects.stack1,
                              style: _infoFont,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          myProjects.stack2.isEmpty
                              ? Container()
                              : Container(
                                  padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 23, 23, 23),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 23, 23, 23),
                                      ),
                                      borderRadius: BorderRadius.circular(2.0)),
                                  child: Text(
                                    myProjects.stack2,
                                    style: _infoFont,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                        ],
                      ),
                    ],
                  ),
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
          activeDotColor: Color.fromARGB(247, 252, 118, 8),
          dotColor: Color.fromARGB(255, 52, 52, 52),
        ),
      );
}
