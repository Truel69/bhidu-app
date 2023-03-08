import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_bhidu/Authentication/OTPVerification.dart';
import 'package:project_bhidu/Authentication/SignUp.dart';
import 'package:project_bhidu/Utils/utils.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool isEmailEmpty = true;
  bool isPassEmpty = true;
  bool passObscore = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: mediaQuery.height * (86 / 812),
                ),
                Text(
                  "Sign in",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff353945),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Welcome back , Sign in to continue ",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff777E90),
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
                Container(
                  width: mediaQuery.width,
                  height: 52,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        color: isEmailEmpty
                            ? Color.fromARGB(169, 119, 126, 144)
                            : Color(0xffE97F5C),
                        width: isEmailEmpty ? 1 : 2),
                  ),
                  child: Center(
                    child: TextField(
                      controller: emailController,
                      onChanged: (value) {
                        if (emailController.text.isEmpty &&
                            isEmailEmpty == false) {
                          setState(() {
                            isEmailEmpty = true;
                          });
                        }
                        if (emailController.text.isNotEmpty &&
                            isEmailEmpty == true) {
                          setState(() {
                            isEmailEmpty = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Type your email",
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffB1B5C3),
                        ),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.mail_outline,
                          size: 24,
                          color: Color(0xffB1B5C3),
                        ),
                      ),
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff777E90),
                      ),
                      cursorColor: Color(0xff777E90),
                      cursorHeight: 24,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  width: mediaQuery.width,
                  height: 52,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        color: isPassEmpty
                            ? Color.fromARGB(169, 119, 126, 144)
                            : Color(0xffE97F5C),
                        width: isPassEmpty ? 1 : 2),
                  ),
                  child: Center(
                    child: TextField(
                      obscureText: passObscore,
                      controller: passController,
                      onChanged: (value) {
                        if (passController.text.isEmpty &&
                            isPassEmpty == false) {
                          setState(() {
                            isPassEmpty = true;
                          });
                        }
                        if (passController.text.isNotEmpty &&
                            isPassEmpty == true) {
                          setState(() {
                            isPassEmpty = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Type your password",
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffB1B5C3),
                        ),
                        suffixIcon: !passObscore
                            ? InkWell(
                                onTap: () {
                                  setState(() {
                                    passObscore = !passObscore;
                                  });
                                },
                                child: Icon(
                                  Icons.visibility_outlined,
                                  size: 24,
                                  color: Color(0xffB1B5C3),
                                ),
                              )
                            : InkWell(
                                onTap: () {
                                  setState(() {
                                    passObscore = !passObscore;
                                  });
                                },
                                child: Icon(
                                  Icons.visibility_off_outlined,
                                  size: 24,
                                  color: Color(0xffB1B5C3),
                                ),
                              ),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          size: 24,
                          color: Color(0xffB1B5C3),
                        ),
                      ),
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff777E90),
                      ),
                      cursorColor: Color(0xff777E90),
                      cursorHeight: 24,
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffE97F5C),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OTPVerificationScreen(),
                    ));
                  },
                  child: Container(
                    height: 52,
                    width: mediaQuery.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: !isEmailEmpty && !isPassEmpty
                          ? Color(0xffE97F5C)
                          : Color.fromARGB(153, 239, 146, 115),
                    ),
                    child: Center(
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 2,
                      width: mediaQuery.width * (140 / 374),
                      color: Color(0xffE6E8EC),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        "Or",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xffB1B5C3),
                        ),
                      ),
                    ),
                    Container(
                      height: 2,
                      width: mediaQuery.width * (140 / 374),
                      color: Color(0xffE6E8EC),
                    ),
                  ],
                ),
                SizedBox(
                  height: 36,
                ),
                Container(
                  width: mediaQuery.width,
                  height: 52,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color.fromARGB(169, 119, 126, 144),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/google.png",
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                        ),
                        Spacer(),
                        Text(
                          "Sign in with Google",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff777E90),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: mediaQuery.width,
                  height: 52,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color.fromARGB(169, 119, 126, 144),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/facebook.webp",
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                        ),
                        Spacer(),
                        Text(
                          "Sign in with Google",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff777E90),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: mediaQuery.width,
                  height: 52,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color.fromARGB(169, 119, 126, 144),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/apple.png",
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                        ),
                        Spacer(),
                        Text(
                          "Sign in with Google",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff777E90),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                // Spacer(),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have account? ",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff777E90),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ));
                      },
                      splashColor: Color.fromARGB(0, 136, 136, 136),
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffE97F5C),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
