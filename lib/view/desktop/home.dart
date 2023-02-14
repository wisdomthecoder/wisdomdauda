import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wisdomdauda/constants/url.dart';

import '../../constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      height: height(context) - kToolbarHeight,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 0, 0, 0),
        image: DecorationImage(
            image: AssetImage(
              'assets/background/back2.jpeg',
            ),
            opacity: .2,
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: EdgeInsets.only(left: width(context) / 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacer(),
                        SelectableText(
                          'Hello, my name is',
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          style: GoogleFonts.poppins(
                            fontSize: height(context) / 50,
                            fontWeight: FontWeight.w200,
                            shadows: [
                              Shadow(
                                  blurRadius: 5,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  offset: Offset(5, -2)),
                            ],
                          ),
                        ),
                        SelectableText.rich(
                          TextSpan(
                            text: 'Wisdom ',
                            style: GoogleFonts.poppins(
                              fontSize: height(context) / 12,
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
                                  text: 'Dauda',
                                  style: TextStyle(color: Colors.pinkAccent)),
                            ],
                          ),
                        ),
                        SelectableText(
                          'Software Engineer(Flutter)',
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          style: GoogleFonts.poppins(
                            fontSize: height(context) / 40,
                            fontWeight: FontWeight.w600,
                            shadows: [
                              Shadow(
                                  blurRadius: 5,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  offset: Offset(5, -2)),
                            ],
                          ),
                        ),
                        SelectableText(
                          'CEO Stylinix Innovations',
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          style: GoogleFonts.poppins(
                            fontSize: height(context) / 50,
                            fontWeight: FontWeight.w100,
                            shadows: [
                              Shadow(
                                  blurRadius: 5,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  offset: Offset(5, -2)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 50.0),
                          child: SizedBox(
                            width: width(context) / 3,
                            height: 50,
                            child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Row(children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.blue),
                                          ),
                                          hintText: '   Type Message Here',
                                          hintStyle:
                                              TextStyle(color: Colors.blue)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: double.infinity,
                                    width: 150,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.blue),
                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Icon(FontAwesomeIcons.facebookF,
                                                  color: Colors.white),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Facebook',
                                                style: TextStyle(fontSize: 15),
                                              ),
                                            ],
                                          )),
                                    ),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Spacer()
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image(
                            colorBlendMode: BlendMode.colorBurn,
                            image: AssetImage('assets/images/wisdom.png'),
                          )),
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 50,
                    width: width(context) / 6,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white),
                          icon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/images/upwork.png'),
                          ),
                          onPressed: () async {
                            await openUrl('https://www.fiverr.com/wisdomdauda');
                          },
                          label: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Spacer(),
                              Text(
                                'Hire Me',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 1, 136, 46)),
                              ),
                              Spacer(),
                              Spacer()
                            ],
                          )),
                    )),
                SizedBox(
                  width: 50,
                ),
                SizedBox(
                    height: 50,
                    width: width(context) / 6,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                        onTap: () async {
                          await openUrl(
                              'https://www.buymeacoffee.com/daudawisdom');
                        },
                        child: Image.asset(
                          'assets/images/buymeacoffee.png',
                          width: width(context) / 5,
                          fit: BoxFit.fill,
                          height: 50,
                        ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
