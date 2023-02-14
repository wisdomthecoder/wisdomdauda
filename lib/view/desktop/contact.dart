import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
            Color.fromARGB(255, 0, 48, 37),
            Color.fromARGB(255, 0, 136, 104),
          ])),
      height: height(context) - kToolbarHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Contact Us',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w600,
                  fontSize: width(context) / 40),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/background/maps.png',
                    ),
                  ),
                ),
                SizedBox(
                  height: height(context) / 2,
                  child: ClipOval(
                    child: VerticalDivider(
                      color: Color.fromARGB(255, 255, 255, 255),
                      thickness: 2,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        List<String> contactDetails = [
                          'Phone Number:  0810-238-2771, 0810-238-2771, 0810-238-2771',
                          'Email: stylinixinnovations@gmail.com',
                          'Address: 01 Street, LGA, State'
                        ];
                        List<IconData> contactIcon = [
                          Icons.phone,
                          Icons.mail,
                          Icons.location_on
                        ];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            textColor: Colors.cyanAccent.shade100,
                            iconColor: Colors.cyanAccent.shade100,
                            leading: Icon(contactIcon[index]),
                            title: Text(
                              contactDetails[index],
                              style: GoogleFonts.poppins(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w600,
                                  fontSize: width(context) / 40),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              ' 2023. Created and Powered by Wisdom Dauda with Flutter(100% Dart)',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: width(context) / 80,
                  color: Colors.tealAccent.shade100),
            ),
            color: Color.fromARGB(255, 1, 90, 81),
            height: kBottomNavigationBarHeight,
          )
        ],
      ),
    );
  }
}
