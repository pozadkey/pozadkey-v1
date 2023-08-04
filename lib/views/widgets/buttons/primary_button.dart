// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final String title;

  Color initalTextColor;
  Color initialBgColor;
  Color hoverInColor;
  Color hoverInBgColor;
  Color hoverOutColor;
  Color hoverOutBgColor;
  final Function onPressed;

  PrimaryButton(
      {Key? key,
      required this.title,
      required this.initalTextColor,
      required this.initialBgColor,
      required this.hoverInColor,
      required this.hoverInBgColor,
      required this.hoverOutColor,
      required this.hoverOutBgColor,
      required this.onPressed})
      : super(key: key);

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final buttonFont = TextStyle(
        fontSize: 13,
        color: widget.initalTextColor,
        letterSpacing: 1.5,
        fontWeight: FontWeight.w700);

    return MouseRegion(
      onEnter: (m) {
        setState(() {
          widget.initalTextColor = widget.hoverInColor;
          widget.initialBgColor = widget.hoverInBgColor;
        });
      },
      onExit: (m) {
        setState(() {
          widget.initalTextColor = widget.hoverOutColor;
          widget.initialBgColor = widget.hoverOutBgColor;
        });
      },
      child: TextButton(
        child: Padding(
          padding: width >= 800 ? EdgeInsets.all(10) : EdgeInsets.all(6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: buttonFont,
              ),
              SizedBox(
                width: 7,
              ),
            ],
          ),
        ),
        onPressed: () {
          widget.onPressed();
        },
        style: TextButton.styleFrom(
          backgroundColor: widget.initialBgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              5.0,
            ),
          ),
        ),
      ),
    );
  }
}
