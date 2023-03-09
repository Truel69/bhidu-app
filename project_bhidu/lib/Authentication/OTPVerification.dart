import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_bhidu/Authentication/ForgetPassword.dart';
import 'package:project_bhidu/Utils/utils.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  TextEditingController otp1 = TextEditingController();
  TextEditingController otp2 = TextEditingController();
  TextEditingController otp3 = TextEditingController();
  TextEditingController otp4 = TextEditingController();
  String otp = "";

  Future<void> verifyOTP() async {
    otp = otp1.text + otp2.text + otp3.text + otp4.text;
    // log(otp);
    // log(otp1.text);
    // log(otp2.text);
    // log(otp3.text);
    // log(otp4.text);
    if (otp.length < 4) {
      showSnackBar("Invalid OTP ", context);
      return;
    }
    showSnackBar("$otp is you OTP", context, color: Colors.green.shade400);
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => ForgetPasswordScreen(),
    //     ));
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 84,
              ),
              Text(
                "OTP Verification",
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
                  "Check your email. We’ve sent you the \nCode at Examplefilledmail@gmail.com",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _textFieldOTP(otp1, first: true, last: false),
                  _textFieldOTP(otp2, first: false, last: false),
                  _textFieldOTP(otp3, first: false, last: false),
                  _textFieldOTP(otp4, first: false, last: true),
                ],
              ),
              SizedBox(
                height: 36,
              ),
              GestureDetector(
                onTap: () async {
                  await verifyOTP();
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
                      "Verify",
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
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn’t recieved email? ",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff353945),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
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
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP(TextEditingController _controller,
      {required bool first, last}) {
    return Container(
      height: 85,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          controller: _controller,
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Color(0xffE97F5C)),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
