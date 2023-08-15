// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey/views/home_view/sections/projects_view/components/tools_page/tools_page_desktop.dart';
import 'package:pozadkey/views/home_view/sections/projects_view/components/tools_page/tools_page_mobile.dart';

class ToolsPage extends StatefulWidget {
  const ToolsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ToolsPage> createState() => _ToolsPageState();
}

class _ToolsPageState extends State<ToolsPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width <= 1243) {
        return ToolsPageMobile();
      } else {
        return ToolsPageDesktop();
      }
    });
  }
}
