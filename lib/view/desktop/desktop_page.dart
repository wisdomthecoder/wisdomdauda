import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:wisdomdauda/view/desktop/home.dart';
import 'package:wisdomdauda/view/desktop/services_pages.dart';

import '../../constants/constants.dart';
import '../widgets/appbartitle.dart';
import 'about.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({super.key});

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
  GlobalKey home = GlobalKey();
  GlobalKey about = GlobalKey();
  GlobalKey services = GlobalKey();
  GlobalKey downloads = GlobalKey();
  GlobalKey contact = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        leadingWidth: 150,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppberTitle(
              onPressed: () async {
                await Scrollable.ensureVisible(home.currentContext!,
                    duration: Duration(seconds: 2));
              },
              text: 'Home',
            ),
            AppberTitle(
              onPressed: () async {
                await Scrollable.ensureVisible(about.currentContext!,
                    duration: Duration(seconds: 2));
              },
              text: 'About',
            ),
            AppberTitle(
              onPressed: () async {
                await Scrollable.ensureVisible(services.currentContext!,
                    duration: Duration(seconds: 2));
              },
              text: 'Services',
            ),
            AppberTitle(
              onPressed: () async {
                await Scrollable.ensureVisible(downloads.currentContext!,
                    duration: Duration(seconds: 2));
              },
              text: 'Downloads',
            ),
            AppberTitle(
              onPressed: () async {
                await Scrollable.ensureVisible(contact.currentContext!,
                    duration: Duration(seconds: 2));
              },
              text: 'Contact',
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.facebook,
                size: 15,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.github,
                size: 15,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.instagram,
                size: 15,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.snapchat,
                size: 15,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.linkedin,
                size: 15,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.whatsapp,
                size: 15,
              ))
        ],
        leading: Center(
            child: Text(
          'The Dev'.toUpperCase(),
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: tealAccent,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
      backgroundColor: Color.fromARGB(255, 43, 42, 42),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
              ),
              child: HomePage(
                key: home,
              ),
            ),
            About(
              key: about,
            ),
            Services(
              key: services,
            ),
            Container(
              key: downloads,
              width: width(context),
              height: height(context),
              color: Colors.primaries[Random().nextInt(
                Colors.primaries.length,
              )],
            ),
            Container(
              key: contact,
              width: width(context),
              height: height(context) - kToolbarHeight,
              color: Colors.primaries[Random().nextInt(
                Colors.primaries.length,
              )],
            )
          ],
        ),
      ),
    );
  }
}
