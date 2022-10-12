// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SecondaryLargeButton extends StatefulWidget {
 final String title;
  Color bgColor;
  Color bgColorOut;
  Color titleColor;
  Color titleColorIn;
  Color titleColorOut;
  Color myColor;
  final Function onPressed;
  SecondaryLargeButton(
      {Key? key,
       required this.title,
      required this.bgColor,
      required this.bgColorOut,
      required this.titleColor,
      required this.titleColorIn,
      required this.titleColorOut,
      required this.myColor,
      required this.onPressed})
      : super(key: key);

  @override
  State<SecondaryLargeButton> createState() => _SecondaryLargeButtonState();
}

class _SecondaryLargeButtonState extends State<SecondaryLargeButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final _secondaryButtonFont = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 12,
        color: widget.titleColor,
        fontWeight: FontWeight.w500);

    return MouseRegion(
      onEnter: (m) {
        setState(() {
          widget.bgColor = widget.myColor;
          widget.titleColor = widget.titleColorIn;
        });
      },
      onExit: (m) {
        setState(() {
         widget.bgColor = widget.bgColorOut;
          widget.titleColor = widget.titleColorOut;
        });
      },
      child: TextButton(
        child: Padding(
          padding: width >= 800 ? EdgeInsets.all(4) : EdgeInsets.all(2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.solidMessage,
                color: widget.titleColor,
                size: 15,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                widget.title,
                style: _secondaryButtonFont,
              ),
            ],
          ),
        ),
        onPressed: () {
          setState(() {
            widget.bgColor = widget.myColor;
            widget.titleColor = widget.titleColorIn;
          });
          widget.onPressed();
        },
        style: TextButton.styleFrom(
          backgroundColor: widget.bgColor,
          side: BorderSide(
            color: widget.myColor,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        ),
      ),
    );
  }
}
