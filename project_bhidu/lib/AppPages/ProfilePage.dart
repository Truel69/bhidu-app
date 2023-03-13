import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_bhidu/AppPages/ProfileSubPages/EditProfile.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  static bool showChangeAvatar = false;
  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  bool showAvtarChangeWidgit = false;
  int topSelection = 0;
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
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
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside),
                                ),
                                child: Image.network(
                                  "https://avatars.githubusercontent.com/u/58760825?v=4",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    // ChangeAvatarWidgit.Visibility = true;
                                    UserProfileScreen.showChangeAvatar = true;
                                  });
                                },
                                child: Image.asset(
                                  "assets/images/camera_icon.png",
                                  width: 36,
                                  height: 36,
                                  fit: BoxFit.cover,
                                ),
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
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => EditProfileScreen(),
                  ));
                },
                child: Row(
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
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (topSelection != 0) {
                          setState(() {
                            topSelection = 0;
                            _pageController.animateToPage(0,
                                duration: Duration(milliseconds: 400),
                                curve: Curves.fastLinearToSlowEaseIn);
                          });
                        }
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Personal",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: topSelection == 0
                                  ? Color(0xffE97F5C)
                                  : Color.fromARGB(153, 239, 146, 115),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          AnimatedContainer(
                            duration: Duration(milliseconds: 400),
                            height: 2.8,
                            width: topSelection == 0 ? 70 : 0,
                            color: Color(0xffE97F5C),
                            curve: Curves.fastLinearToSlowEaseIn,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 28),
                    GestureDetector(
                      onTap: () {
                        if (topSelection != 1) {
                          setState(() {
                            topSelection = 1;
                            _pageController.animateToPage(1,
                                duration: Duration(milliseconds: 400),
                                curve: Curves.fastLinearToSlowEaseIn);
                          });
                        }
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Academic",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: topSelection == 1
                                  ? Color(0xffE97F5C)
                                  : Color.fromARGB(153, 239, 146, 115),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          AnimatedContainer(
                            duration: Duration(milliseconds: 400),
                            height: 2.8,
                            width: topSelection == 1 ? 84 : 0,
                            color: Color(0xffE97F5C),
                            curve: Curves.fastLinearToSlowEaseIn,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  physics: NeverScrollableScrollPhysics(),
                  // onPageChanged: (value) {
                  //   // log(value.toString());
                  //   setState(() {
                  //     topSelection = value;
                  //   });
                  // },
                  children: [
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 24, top: 36),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.grey.shade200,
                              width: 2,
                            ),
                          ),
                          width: mediaQuery.width,
                          // height: 1112,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 28),
                                child: Row(
                                  children: [
                                    Text(
                                      "Name",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Bond Jameson",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 28),
                                child: Row(
                                  children: [
                                    Text(
                                      "Gender",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Attack Helicopter",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 28),
                                child: Row(
                                  children: [
                                    Text(
                                      "Address",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "23, Basant Vihar Sec D",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 28),
                                child: Row(
                                  children: [
                                    Text(
                                      "Date of Birth",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "06.09.2003",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 28),
                                child: Row(
                                  children: [
                                    Text(
                                      "Native Language",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Hindi",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 28),
                                child: Row(
                                  children: [
                                    Text(
                                      "Native State",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Delhi (DL)",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 28),
                                child: Row(
                                  children: [
                                    Text(
                                      "Blood Group",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "AB+",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 28),
                                child: Row(
                                  children: [
                                    Text(
                                      "Blood Group",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "AB+",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 28),
                                child: Row(
                                  children: [
                                    Text(
                                      "Physically Challenged",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Yes",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 28),
                                child: Row(
                                  children: [
                                    Text(
                                      "Community",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Hispanic",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 28),
                                child: Row(
                                  children: [
                                    Text(
                                      "Religion",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Buddhism",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 28),
                                child: Row(
                                  children: [
                                    Text(
                                      "Caste",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Scheduled Tribe",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 28),
                                child: Row(
                                  children: [
                                    Text(
                                      "Nationality",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Indian",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 28),
                                child: Row(
                                  children: [
                                    Text(
                                      "Aadhar Num",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "9938 3282 9902",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff23262F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 36,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AcademicGridWidgit(),
                              AcademicGridWidgit(),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AcademicGridWidgit(),
                              AcademicGridWidgit(),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          ChangeAvatarWidgit(),
        ],
      ),
    );
  }
}

class AcademicGridWidgit extends StatefulWidget {
  String? imageURL;
  AcademicGridWidgit({super.key, this.imageURL});

  @override
  State<AcademicGridWidgit> createState() => _AcademicGridWidgitState();
}

class _AcademicGridWidgitState extends State<AcademicGridWidgit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 160,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
            color: Colors.grey.shade300,
            strokeAlign: BorderSide.strokeAlignOutside),
      ),
      child: Column(
        children: [
          Image.network(
            widget.imageURL != null
                ? widget.imageURL!
                : "https://images.unsplash.com/photo-1678370806992-fc1e5c6b93ab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
            width: 160,
            height: 68,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            width: 160,
            height: 92,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Attendance",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text(
                      "This month",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff777E90),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "69%",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff777E90),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChangeAvatarWidgit extends StatefulWidget {
  const ChangeAvatarWidgit({super.key});
  @override
  State<ChangeAvatarWidgit> createState() => ChangeAvatarWidgitState();
}

class ChangeAvatarWidgitState extends State<ChangeAvatarWidgit> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: AnimatedContainer(
          curve: Curves.fastLinearToSlowEaseIn,
          width: UserProfileScreen.showChangeAvatar ? mediaQuery.width : 0,
          height: UserProfileScreen.showChangeAvatar
              ? mediaQuery.height < 812
                  ? mediaQuery.height * (600 / 812)
                  : 600
              : 0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 200,
                  blurStyle: BlurStyle.outer,
                )
              ]),
          duration: Duration(
            milliseconds: 400,
          ),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: mediaQuery.height < 812
                    ? mediaQuery.height * (20 / 812)
                    : 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: UserProfileScreen.showChangeAvatar,
                    child: Text(
                      "Change avatar",
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Visibility(
                    visible: UserProfileScreen.showChangeAvatar,
                    child: Text(
                      "Change your profile’s avatar!",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff777E90),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height < 812
                        ? mediaQuery.height * (24 / 812)
                        : 24,
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Image.network(
                        "https://images.unsplash.com/photo-1678370806992-fc1e5c6b93ab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
                        width: mediaQuery.width,
                        height: mediaQuery.width - 44,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 12, 12, 0),
                        child: Image.asset(
                          "assets/images/Edit.png",
                          width: 36,
                          height: 36,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mediaQuery.height < 812
                        ? mediaQuery.height * (24 / 812)
                        : 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              UserProfileScreen.showChangeAvatar = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.black),
                            ),
                            height: 52,
                            child: Center(
                              child: Text(
                                "Go back",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  // color: Color(0xff777E90),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color.fromARGB(153, 239, 146, 115)),
                          height: 52,
                          child: Center(
                            child: Text(
                              "Apply",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
