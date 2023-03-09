import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_bhidu/AppPages/ProfilePage.dart';

class MainRouthingPageScreen extends StatefulWidget {
  const MainRouthingPageScreen({super.key});

  @override
  State<MainRouthingPageScreen> createState() => _MainRouthingPageScreenState();
}

class _MainRouthingPageScreenState extends State<MainRouthingPageScreen> {
  int bottomnavSelected = 0;
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Home"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Search"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Add"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("IDK"),
            ],
          ),
          UserProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28, vertical: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  if (bottomnavSelected != 0) {
                    setState(() {
                      bottomnavSelected = 0;
                      _pageController.jumpToPage(0);
                    });
                  }
                },
                child: Container(
                  height: 50,
                  width: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/home_bottom.png",
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                        color: bottomnavSelected == 0
                            ? Color(0xffE97F5C)
                            : Color(0xffB1B5C3),
                      ),
                      Text(
                        "Home",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: bottomnavSelected == 0
                              ? Color(0xffE97F5C)
                              : Color(0xffB1B5C3),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (bottomnavSelected != 1) {
                    setState(() {
                      bottomnavSelected = 1;
                      _pageController.jumpToPage(1);
                    });
                  }
                },
                child: Container(
                  height: 50,
                  width: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/search_bottom.png",
                        width: 24,
                        height: 24,
                        color: bottomnavSelected == 1
                            ? Color(0xffE97F5C)
                            : Color(0xffB1B5C3),
                        fit: BoxFit.cover,
                      ),
                      Text(
                        "Search",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: bottomnavSelected == 1
                              ? Color(0xffE97F5C)
                              : Color(0xffB1B5C3),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  if (bottomnavSelected != 2) {
                    setState(() {
                      bottomnavSelected = 2;
                      _pageController.jumpToPage(2);
                    });
                  }
                },
                mini: true,
                backgroundColor: Color(0xffE97F5C),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (bottomnavSelected != 3) {
                    setState(() {
                      bottomnavSelected = 3;
                      _pageController.jumpToPage(3);
                    });
                  }
                },
                child: Container(
                  height: 50,
                  width: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/idk_bottom.png",
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                        color: bottomnavSelected == 3
                            ? Color(0xffE97F5C)
                            : Color(0xffB1B5C3),
                      ),
                      Text(
                        "idk",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: bottomnavSelected == 3
                              ? Color(0xffE97F5C)
                              : Color(0xffB1B5C3),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (bottomnavSelected != 4) {
                    setState(() {
                      bottomnavSelected = 4;
                      _pageController.jumpToPage(4);
                    });
                  }
                },
                child: Container(
                  height: 50,
                  width: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/user_bottom.png",
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                        color: bottomnavSelected == 4
                            ? Color(0xffE97F5C)
                            : Color(0xffB1B5C3),
                      ),
                      Text(
                        "Profile",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: bottomnavSelected == 4
                              ? Color(0xffE97F5C)
                              : Color(0xffB1B5C3),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
