// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pozadkey/views/home_view/intro/intro.dart';
import 'package:pozadkey/views/widgets/contact_info/contact_info.dart';
import 'package:pozadkey/views/widgets/nav/navbar.dart';

import '../widgets/footer/footer.dart';
import '../widgets/projects_info/projects_info.dart';

class ContactView extends StatefulWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 5, 3, 12),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [NavBar(), ContactInfo(), Footer()],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
