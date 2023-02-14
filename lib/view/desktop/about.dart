import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wisdomdauda/constants/constants.dart';
import 'package:wisdomdauda/view/widgets/service_card.dart';

class About extends StatelessWidget {
  const About({super.key});

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
          Expanded(
              child: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Opacity(
                      opacity: .4,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Hero(
                          tag: '1',
                          child: Image.asset(
                            'assets/background/pic2.jpg',
                            alignment: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacer(),
                        Spacer(),
                        SelectableText(
                          'About Me',
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          style: GoogleFonts.poppins(
                            fontSize: height(context) / 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SelectableText.rich(
                          TextSpan(
                            text: 'Software',
                            style: GoogleFonts.poppins(
                              fontSize: height(context) / 35,
                              fontWeight: FontWeight.w200,
                              color: Color.fromARGB(255, 255, 255, 255),
                              shadows: [
                                Shadow(
                                    blurRadius: 5,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    offset: Offset(5, -2)),
                              ],
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Engineer(Flutter)',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.pinkAccent.shade200)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SelectableText(
                          aboutMe,
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.ltr,
                          style: GoogleFonts.poppins(
                            wordSpacing: 10,
                            height: 1.5,
                            letterSpacing: 2,
                            fontSize: height(context) / 55,
                            fontWeight: FontWeight.w300,
                            shadows: [
                              Shadow(
                                  blurRadius: 5,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  offset: Offset(5, -2)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 100,
                          child: DefaultTextStyle(
                            style: GoogleFonts.poppins(
                                fontSize: 30.0,
                                color: Color.fromARGB(255, 136, 136, 136)),
                            child: AnimatedTextKit(
                              repeatForever: true,
                              isRepeatingAnimation: true,
                              animatedTexts: [
                                TyperAnimatedText('I am an Expert...'),
                                TyperAnimatedText(
                                    'I can Create your Mobile App..'),
                                TyperAnimatedText(
                                    'I Create can your Website...'),
                                TyperAnimatedText('Feel free to Chat Me Up...'),
                                TyperAnimatedText(
                                    'I use  Flutter and React for Mobile Apps...'),
                                TyperAnimatedText('I\'m  17 years young...'),
                              ],
                              onTap: () {
                                print("Tap Event");
                              },
                            ),
                          ),
                        ),
                        for (int i = 1; i < 4; i++) Spacer(),
                      ],
                    ),
                  )),
            ],
          )),
        ],
      ),
    );
  }
}
