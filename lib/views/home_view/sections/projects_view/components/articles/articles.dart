// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

import 'articles_desktop.dart';
import 'articles_mobile.dart';

class Articles extends StatefulWidget {
  const Articles({
    Key? key,
  }) : super(key: key);

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width <= 1243) {
        return ArticlesMobile();
      } else {
        return ArticlesDesktop();
      }
    });
  }
}
