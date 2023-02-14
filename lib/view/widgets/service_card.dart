import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wisdomdauda/constants/constants.dart';

class ServiceCard extends StatelessWidget {
  IconData icon;
  String title;
  String body;
  ServiceCard(
      {super.key, required this.title, required this.body, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 56, 56, 56),
              boxShadow: [
                BoxShadow(
                    color: Colors.white, spreadRadius: 5, offset: Offset(5, 2)),
              ],
              border: Border.all(color: Colors.pink)),
          width: width(context) / 3.5,
          height: height(context) / 2,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Expanded(
                flex: 4,
                child: Icon(
                  icon,
                  size: 50,
                  color: Colors.pink,
                )),
            SelectableText(
              title,
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w400),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  body + '...',
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.fade,
                  style: GoogleFonts.poppins(
                      letterSpacing: 1,
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 40,
                width: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Read More',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
