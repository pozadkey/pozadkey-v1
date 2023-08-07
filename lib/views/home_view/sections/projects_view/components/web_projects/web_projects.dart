// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey/views/home_view/sections/projects_view/components/web_projects/web_projects_desktop.dart';
import 'package:pozadkey/views/home_view/sections/projects_view/components/web_projects/web_projects_mobile.dart';

class WebProjects extends StatefulWidget {
  const WebProjects({
    Key? key,
  }) : super(key: key);

  @override
  State<WebProjects> createState() => _WebProjectsState();
}

class _WebProjectsState extends State<WebProjects> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width <= 1243) {
        return WebProjectsMobile();
      } else {
        return WebProjectsDesktop();
      }
    });
  }
}
