import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wisdomdauda/constants/constants.dart';

class ServiceCard extends StatelessWidget {
  Widget icon;
  String title;
  String body;
  ServiceCard(
      {super.key, required this.title, required this.body, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        icon,
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: width(context) / 6,
            child: Divider(
              thickness: 4,
              color: Colors.grey,
            ),
          ),
        ),
        Text(
          title.toUpperCase(),
          style: GoogleFonts.poppins(fontSize: 20),
        )
      ]),
    );
  }
}
