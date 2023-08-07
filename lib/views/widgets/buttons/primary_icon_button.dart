// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';

class PrimaryIconButton extends StatefulWidget {
  final String title;
  IconData icon;
  final double size;
  Color initalTextColor;
  Color initialBgColor;
  Color hoverInColor;
  Color hoverInBgColor;
  Color hoverOutColor;
  Color hoverOutBgColor;
  final Function onPressed;

  PrimaryIconButton(
      {Key? key,
      required this.title,
      required this.icon,
      required this.size,
      required this.initalTextColor,
      required this.initialBgColor,
      required this.hoverInColor,
      required this.hoverInBgColor,
      required this.hoverOutColor,
      required this.hoverOutBgColor,
      required this.onPressed})
      : super(key: key);

  @override
  State<PrimaryIconButton> createState() => _PrimaryIconButtonState();
}

class _PrimaryIconButtonState extends State<PrimaryIconButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final buttonFont = TextStyle(
        fontSize: 13,
        color: widget.initalTextColor,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.2);

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
              Icon(
                widget.icon,
                color: widget.initalTextColor,
                size: widget.size,
              ),
              SizedBox(
                width: 6.5,
              ),
              Text(
                widget.title,
                style: buttonFont,
                textAlign: TextAlign.center,
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
              3.0,
            ),
          ),
        ),
      ),
    );
  }
}
