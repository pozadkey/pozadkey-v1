// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pozadkey/views/home_view/sections/projects_info/projects_info_mobile.dart';
import 'projects_info_desktop.dart';


class ProjectsInfo extends StatefulWidget {
  const ProjectsInfo({Key? key}) : super(key: key);

  @override
  State<ProjectsInfo> createState() => _ProjectsInfoState();
}

class _ProjectsInfoState extends State<ProjectsInfo> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width <= 1243) {
        return ProjectsInfoMobile();
      } else {
        return ProjectsInfoDesktop();
      }
    });
  }
}
