// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'contact_desktop.dart';
import 'contact_mobile.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width < 1243) {
        return ContactMobile();
      } else {
        return ContactDesktop();
      }
    });
  }
}
