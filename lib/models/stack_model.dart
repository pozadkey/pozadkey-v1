// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StackModel {
  String title;
  double width;
  Color? textColor;
  Color? textBgdColor;

  StackModel({
    required this.title,
    required this.width,
    required this.textColor,
    required this.textBgdColor,
  });
}

List<StackModel> stackList = [
  StackModel(
      title: 'JavaScript',
      width: 80,
      textColor: Colors.red[600],
      textBgdColor: Colors.orange[100]),
  StackModel(
      title: 'Dart',
      width: 50,
      textColor: Colors.orange[600],
      textBgdColor: Colors.blue[100]),
  StackModel(
      title: 'Flutter',
      width: 80,
      textColor: Colors.red[600],
      textBgdColor: Colors.blue[100]),
  StackModel(
      title: 'Firebase',
      width: 50,
      textColor: Colors.orange[600],
      textBgdColor: Colors.orange[100]),
  StackModel(
      title: 'Cloud Firestore',
      width: 80,
      textColor: Colors.red[600],
      textBgdColor: Colors.red[100]),
  StackModel(
      title: 'Node.js',
      width: 50,
      textColor: Colors.orange[600],
      textBgdColor: Colors.green[100]),
  StackModel(
      title: 'Riverpod',
      width: 50,
      textColor: Colors.orange[600],
      textBgdColor: Colors.blue[100]),
  StackModel(
      title: 'MongoDb',
      width: 80,
      textColor: Colors.red[600],
      textBgdColor: Colors.red[100]),
  StackModel(
      title: 'Express.js',
      width: 50,
      textColor: Colors.orange[600],
      textBgdColor: Colors.green[100]),
  StackModel(
      title: 'Mongoose',
      width: 80,
      textColor: Colors.red[600],
      textBgdColor: Colors.green[100]),
  StackModel(
      title: 'Mocha',
      width: 50,
      textColor: Colors.orange[600],
      textBgdColor: Colors.brown[100]),
  StackModel(
      title: 'Android Studio',
      width: 50,
      textColor: Colors.orange[600],
      textBgdColor: Colors.green[100]),
  StackModel(
      title: 'Xcode',
      width: 80,
      textColor: Colors.red[600],
      textBgdColor: Colors.grey[300]),
  StackModel(
      title: 'Postman',
      width: 50,
      textColor: Colors.orange[600],
      textBgdColor: Colors.red[100]),
  StackModel(
      title: 'Git',
      width: 50,
      textColor: Colors.orange[600],
      textBgdColor: Colors.red[100]),
];
