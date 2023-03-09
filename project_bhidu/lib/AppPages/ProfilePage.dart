import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: mediaQuery.width,
                    height: 28,
                    color: Color(0xffE97F5C),
                  ),
                  Image.asset("assets/images/profile_top_nav.png",
                      width: mediaQuery.width,
                      height: 136,
                      fit: BoxFit.fill,
                      color: Color(0xffE97F5C)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 28 + 52,
                      ),
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            clipBehavior: Clip.antiAlias,
                            // padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(46),
                              border: Border.all(
                                  color: Colors.white,
                                  // style: BorderStyle.solid,
                                  width: 2,
                                  strokeAlign: BorderSide.strokeAlignOutside),
                            ),
                            child: Image.network(
                              "https://avatars.githubusercontent.com/u/58760825?v=4",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Image.asset(
                            "assets/images/camera_icon.png",
                            width: 36,
                            height: 36,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "@username(?)",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff777E90),
                ),
              )
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Test Name Meow",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff23262F),
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Icon(
                Icons.check_circle,
                size: 20,
                color: Color(0xff22A516),
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.mode_edit_outlined,
                size: 16,
                color: Color(0xff777E90),
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                "Edit Profile",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff777E90),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
