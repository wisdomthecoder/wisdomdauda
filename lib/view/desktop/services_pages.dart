import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SelectableText.rich(
            TextSpan(
              text: 'What I ',
              style: GoogleFonts.poppins(
                fontSize: height(context) / 22,
                fontWeight: FontWeight.bold,
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
                    text: ' can Do'.toUpperCase(),
                    style: TextStyle(color: Colors.pinkAccent)),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: PageScrollPhysics(),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ServiceCard(
                title: 'Mobile App Development',
                body:
                    '   I use Kotlin, JavaScript and Flutter Engine for a responsive and a high perfomance mobile apps which will work on Web, Android, iOS, Windows, Linux  macOS and Fuchsia',
                icon: Icons.engineering,
              ),
              ServiceCard(
                title: 'Backend Development',
                body:
                    '   I am  into backend development, I use Node.js, DJango, Ruby, JavaScript and Kotlin to create a Highly Scalable and Dynamic Backend with dynamic functionalities like Authentication, REST Api, Machine Learning, Analytics, Storage and Cloud Computing',
                icon: FontAwesomeIcons.database,
              ),
              ServiceCard(
                title: 'Graphics Design',
                body: '   ',
                icon: FontAwesomeIcons.database,
              ),
              ServiceCard(
                title: 'Church Media and Presentation',
                body: '   I am  also into church Media, PRe',
                icon: FontAwesomeIcons.bookBible,
              ),
              ServiceCard(
                title: 'Mobile App Development',
                body:
                    'I use Flutter Engine for a responsive and a high perfomance mobile apps which will work on Android, iOS, Windows, Linux  macOS and Fuchsia',
                icon: FontAwesomeIcons.mobileScreen,
              ),
              ServiceCard(
                title: 'Mobile App Development',
                body:
                    'I use Flutter Engine for a responsive and a high perfomance mobile apps which will work on Android, iOS, Windows, Linux  macOS and Fuchsia',
                icon: FontAwesomeIcons.mobileScreen,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
