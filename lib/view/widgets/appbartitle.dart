import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wisdomdauda/constants/constants.dart';

class AppberTitle extends StatefulWidget {
  VoidCallback onPressed;
  String text;
  AppberTitle({required this.onPressed, required this.text, super.key});

  @override
  State<AppberTitle> createState() => _AppberTitleState();
}

class _AppberTitleState extends State<AppberTitle> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: TextButton.styleFrom(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          foregroundColor:
              hover ? tealAccent : Color.fromARGB(255, 255, 249, 224)),
      onHover: (value) => setState(() {
        hover = value;
      }),
      child: Text(
        widget.text,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
