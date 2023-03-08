import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_bhidu/Authentication/SignIn.dart';

class ScreenFirst_2 extends StatefulWidget {
  const ScreenFirst_2({super.key});

  @override
  State<ScreenFirst_2> createState() => _ScreenFirst_2State();
}

class _ScreenFirst_2State extends State<ScreenFirst_2> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/2-1.png",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Image.asset(
                    "assets/images/2-2.png",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 182),
                  child: Image.asset(
                    "assets/images/2-3.png",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Welcome to",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff141416),
                    ),
                  ),
                  Image.asset(
                    "assets/images/Logo.png",
                    width: 54,
                    height: 74,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "Bhidu - App desc. Lorem ipsum sit det amit",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff353945),
                    ),
                  ),
                  SizedBox(
                    height: 52,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignInScreen(),
                      ));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: mediaQuery.height * (40 / 812),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffE97F5C),
                      ),
                      child: Center(
                        child: Text(
                          "Get started",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
