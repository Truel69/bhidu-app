import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_bhidu/Utils/AppColors.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _userController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Center(
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 20,
              color: blueGrey,
            ),
          ),
        ),
        title: Center(
          child: Text(
            "Edit profile",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: blueGrey,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              Text(
                "Name",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: blueGrey,
                ),
              ),
              SizedBox(
                height: 48,
                child: TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline,
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
                      borderSide: BorderSide(width: 2, color: blueGrey),
                    ),
                    hintText: "Name",
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
              SizedBox(
                height: 24,
              ),
              Text(
                "User name",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: blueGrey,
                ),
              ),
              SizedBox(
                height: 48,
                child: TextFormField(
                  controller: _userController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.alternate_email_rounded,
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
                      borderSide: BorderSide(width: 2, color: blueGrey),
                    ),
                    hintText: "usernamepiss123",
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
              SizedBox(
                height: 24,
              ),
              Text(
                "Email",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: blueGrey,
                ),
              ),
              SizedBox(
                height: 48,
                child: TextFormField(
                  controller: _emailController,
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
                      borderSide: BorderSide(width: 2, color: blueGrey),
                    ),
                    hintText: "exampleemailid@gamal.com",
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
              Spacer(),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => MainRouthingPageScreen(),
                  // ));
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
                      "Confirm",
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
    );
  }
}
