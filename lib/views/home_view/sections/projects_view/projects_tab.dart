// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pozadkey/views/home_view/sections/projects_view/projects_tab_desktop.dart';
import 'package:pozadkey/views/home_view/sections/projects_view/projects_tab_mobile.dart';

class ProjectsTab extends StatefulWidget {
  const ProjectsTab({Key? key}) : super(key: key);

  @override
  State<ProjectsTab> createState() => _ProjectsTabState();
}

class _ProjectsTabState extends State<ProjectsTab> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width < 1243) {
        return ProjectsTabMobile();
      } else {
        return ProjectsTabDesktop();
      }
    });
  }
}
