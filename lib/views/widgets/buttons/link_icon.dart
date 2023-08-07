// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LinkIcon extends StatefulWidget {
  IconData icon;
  Color bgColor;
  Color bgColorOut;
  Color iconColor;
  Color iconColorIn;
  Color iconColorOut;
  double widthSize;
  Color myColor;
  final Function onPressed;
  LinkIcon(
      {Key? key,
      required this.bgColor,
      required this.widthSize,
      required this.iconColor,
      required this.iconColorIn,
      required this.iconColorOut,
      required this.icon,
      required this.bgColorOut,
      required this.myColor,
      required this.onPressed})
      : super(key: key);

  @override
  State<LinkIcon> createState() => _LinkIconState();
}

class _LinkIconState extends State<LinkIcon> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (m) {
          setState(() {
            widget.bgColor = widget.myColor;
            widget.iconColor = widget.iconColorIn;
          });
        },
        onExit: (m) {
          setState(() {
            widget.bgColor = widget.bgColorOut;
            widget.iconColor = widget.iconColorOut;
          });
        },
        child: Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              border:
                  Border.all(color: Color.fromRGBO(54, 54, 54, 1), width: 2),
              color: widget.bgColor,
              borderRadius: BorderRadius.circular(3.0)),
          child: IconButton(
            padding: EdgeInsets.all(1.3),
            constraints: BoxConstraints(),
            onPressed: () {
              widget.onPressed();
            },
            icon: Icon(
              widget.icon,
              size: widget.widthSize,
              color: widget.iconColor,
            ),
          ),
        ));
  }
}
