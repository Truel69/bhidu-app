import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_bhidu/Authentication/SignIn.dart';

class EmailSentSuccessful extends StatefulWidget {
  const EmailSentSuccessful({super.key});

  @override
  State<EmailSentSuccessful> createState() => _EmailSentSuccessfulState();
}

class _EmailSentSuccessfulState extends State<EmailSentSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ));
                },
                child: Text(
                  "Back to sign in",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff777E90),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        "assets/images/success_icon.png",
                        width: 140,
                        height: 140,
                      ),
                      Icon(
                        Icons.check,
                        size: 28,
                        color: Color(0xff22A516),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Check your email",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff353945),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        "We’ve sent a magic for you to reset your password. check email to reset",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff777E90),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn’t recieved email? ",
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
                    onTap: () {},
                    splashColor: Colors.orange.shade200,
                    child: Text(
                      "Request again",
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
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
