// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey/views/home_view/sections/projects_view/components/web_projects/web_projects_desktop.dart';
import 'package:pozadkey/views/home_view/sections/projects_view/components/web_projects/web_projects_mobile.dart';

import 'mobile_projects_desktop.dart';
import 'mobile_projects_mobile.dart';

class MobileProjects extends StatefulWidget {
  MobileProjects({
    Key? key,
  }) : super(key: key);

  @override
  State<MobileProjects> createState() => _MobileProjectsState();
}

class _MobileProjectsState extends State<MobileProjects> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width <= 1243) {
        return MobileProjectsMobile();
      } else {
        return MobileProjectsDesktop();
      }
    });
  }
}
