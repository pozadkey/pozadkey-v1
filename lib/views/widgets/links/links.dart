// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';

class Links extends StatefulWidget {
  String title;
  Color initialColor;
  Color hoverColorIn;
  Color hoverColorOut;
  final Function onPressed;

  Links(
      {Key? key,
      required this.onPressed,
      required this.title,
      required this.initialColor,
      required this.hoverColorIn,
      required this.hoverColorOut})
      : super(key: key);

  @override
  _LinksState createState() => _LinksState();
}

class _LinksState extends State<Links> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final _linkFont = TextStyle(
        letterSpacing: 0.5,
        fontSize: width >= 800 ? 16 : 14,
        color: widget.initialColor,
        fontWeight: FontWeight.w500);

    return MouseRegion(
        onEnter: (m) {
          setState(() {
            widget.initialColor = widget.hoverColorIn;
          });
        },
        onExit: (m) {
          setState(() {
            widget.initialColor = widget.hoverColorOut;
          });
        },
        child: MaterialButton(
          padding: EdgeInsets.zero,
          minWidth: 0,
          onPressed: () {
            widget.onPressed();
          },
          child: Text(
            widget.title,
            style: _linkFont,
          ),
        ));
  }
}
