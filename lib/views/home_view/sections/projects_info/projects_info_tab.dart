// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey/models/projects_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsInfoTab extends StatefulWidget {
  const ProjectsInfoTab({Key? key}) : super(key: key);

  @override
  State<ProjectsInfoTab> createState() => _ProjectsInfoTabState();
}

class _ProjectsInfoTabState extends State<ProjectsInfoTab> {
  final _titleFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 50,
      color: Colors.white,
      fontWeight: FontWeight.w600);

  final _infoFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
      color: Colors.grey[350],
      fontWeight: FontWeight.w400);

  final _featuredFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 18,
      color: Colors.grey[350],
      fontWeight: FontWeight.w600);

  final _platformFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 18,
      color: Color.fromARGB(235, 255, 153, 0),
      fontWeight: FontWeight.w600);

  final _navButtonFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 18,
      color: Color.fromARGB(235, 255, 153, 0),
      letterSpacing: 0.41,
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(100, 50, 100, 50),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'PROJECTS',
              style: _featuredFont,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 30,
                  );
                },
                itemCount: projectsList.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext ctx, index) {
                  Projects myProjects = projectsList[index];
                  return Container(
                      padding: EdgeInsets.fromLTRB(30, 50, 30, 80),
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: Color.fromARGB(255, 21, 18, 27),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            myProjects.title,
                            style: _titleFont,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            myProjects.stack1,
                            style: _featuredFont,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            myProjects.platform,
                            style: _platformFont,
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
                          myProjects.github.isEmpty
                              ? SizedBox(
                                  width: 150,
                                  child: FittedBox(
                                    child: Row(
                                      children: [
                                        TextButton(
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                40, 14, 40, 14),
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
                                                  FontAwesomeIcons
                                                      .arrowUpRightFromSquare,
                                                  color: Color.fromARGB(
                                                      235, 255, 153, 0),
                                                  size: 20,
                                                )
                                              ],
                                            ),
                                          ),
                                          onPressed: () {
                                            var url =
                                                Uri.parse(myProjects.live);
                                            launchUrl(url);
                                          },
                                          style: TextButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  color: Color.fromARGB(
                                                      235, 255, 153, 0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : SizedBox(
                                  width: 300,
                                  child: FittedBox(
                                    child: Row(
                                      children: [
                                        TextButton(
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                40, 14, 40, 14),
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
                                                  FontAwesomeIcons
                                                      .arrowUpRightFromSquare,
                                                  color: Color.fromARGB(
                                                      235, 255, 153, 0),
                                                  size: 20,
                                                )
                                              ],
                                            ),
                                          ),
                                          onPressed: () {
                                            var url =
                                                Uri.parse(myProjects.live);
                                            launchUrl(url);
                                          },
                                          style: TextButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  color: Color.fromARGB(
                                                      235, 255, 153, 0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0)),
                                          ),
                                        ),
                                        TextButton(
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 14, 10, 14),
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
                                                  color: Color.fromARGB(
                                                      235, 255, 153, 0),
                                                  size: 20,
                                                )
                                              ],
                                            ),
                                          ),
                                          onPressed: () {
                                            var url =
                                                Uri.parse(myProjects.github);
                                            launchUrl(url);
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                )
                        ],
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
