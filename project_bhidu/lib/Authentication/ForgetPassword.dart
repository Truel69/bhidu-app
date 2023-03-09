import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_bhidu/Authentication/EmailSentSuccess.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 84,
                  ),
                  Text(
                    "Forget password",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff353945),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Flexible(
                    child: Text(
                      "Enter your email, we will send you a magic link \nto reset your password",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff777E90),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 38,
                  ),
                  SizedBox(
                    height: 48,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          size: 28,
                          color: Color(0xffB1B5C3),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: Color(0xffE97F5C), width: 2),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(width: 2),
                        ),
                        hintText: "Type your email",
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffB1B5C3),
                        ),
                      ),
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff777E90),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EmailSentSuccessful(),
                        ));
                      },
                      child: Container(
                        height: 52,
                        width: mediaQuery.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffE97F5C),
                        ),
                        child: Center(
                          child: Text(
                            "Comfirm",
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
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
