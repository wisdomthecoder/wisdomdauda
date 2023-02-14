import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wisdomdauda/constants/constants.dart';
import 'package:wisdomdauda/view/widgets/service_card.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      padding: EdgeInsets.all(10),
      height: height(context) - kToolbarHeight,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 43, 42, 42),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: width(context) / 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Entry.offset(
                    xOffset: 0,
                    yOffset: 20,
                    child: Text(
                      'My Services',
                      style: GoogleFonts.poppins(
                          fontSize: 30,
                          color: Color.fromARGB(255, 145, 63, 0),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(
                    thickness: 4,
                    color: Color.fromARGB(255, 129, 56, 0),
                  )
                ],
                mainAxisSize: MainAxisSize.min,
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Entry.opacity(
                duration: Duration(seconds: 2),
                child: ServiceCard(
                    title: 'Mobile App Development',
                    body: '',
                    icon: Image.asset(
                      'assets/images/mobile app dev.png',
                      width: 150,
                    )),
              )),
              Opacity(
                opacity: .5,
                child: ClipOval(
                  clipBehavior: Clip.hardEdge,
                  //  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    'assets/background/pic2.jpg',
                    width: 300,
                  ),
                ),
              ),
              Expanded(
                child: Entry.offset(
                  xOffset: 100,
                  duration: Duration(seconds: 2),
                  yOffset: -400,
                  child: DefaultTextStyle(
                    style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 255, 249, 230),
                      fontSize: 40.0,
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        TypewriterAnimatedText('Mobile App Developer'),
                        TypewriterAnimatedText('Flutter Developer'),
                        TypewriterAnimatedText('Web Developer'),
                        TypewriterAnimatedText('Ethical Hacker'),
                        TypewriterAnimatedText('Computer Expert'),
                        TypewriterAnimatedText('Graphics Designer'),
                        TypewriterAnimatedText('Church Media Consultant'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
