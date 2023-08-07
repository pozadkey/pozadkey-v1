// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

import 'mobile_projects_desktop.dart';
import 'mobile_projects_mobile.dart';

class MobileProjects extends StatefulWidget {
  const MobileProjects({
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
