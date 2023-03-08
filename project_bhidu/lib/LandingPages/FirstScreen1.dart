import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenFirst_1 extends StatefulWidget {
  const ScreenFirst_1({super.key});

  @override
  State<ScreenFirst_1> createState() => ScreenFirst_1State();
}

class ScreenFirst_1State extends State<ScreenFirst_1> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Center(
            child: Image.asset(
              "assets/images/Logo.png",
              width: 54,
              height: 74,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * (108 / 812)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Swipe to continue",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff777E90),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
