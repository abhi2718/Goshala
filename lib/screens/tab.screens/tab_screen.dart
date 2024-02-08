import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gaushala_frontend/res/color.dart';
import 'package:gaushala_frontend/screens/tab.screens/hometab.screen/home_screen.dart';
import 'package:gaushala_frontend/screens/tab.screens/managetab.screen/manage_screen.dart';
import 'package:gaushala_frontend/screens/tab.screens/profiletab.screen/profile_screen.dart';
import 'package:gaushala_frontend/screens/tab.screens/requestVetTab.screen/request_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Widget> tabs = const [
    HomeScreen(),
    ManageScreen(),
    RequestScreen(),
    ProfileScreen(),
  ];

  var currenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          tabs[currenIndex],
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: AppColor.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, -2),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                  child: BottomNavigationBar(
                      selectedLabelStyle: GoogleFonts.inter(),
                      showUnselectedLabels: true,
                      showSelectedLabels: true,
                      backgroundColor: AppColor.whiteColor,
                      selectedItemColor: Theme.of(context).primaryColor,
                      unselectedItemColor: AppColor.bottomNavIconUnselected,
                      currentIndex: currenIndex,
                      unselectedLabelStyle: GoogleFonts.inter(),
                      type: BottomNavigationBarType.fixed,
                      onTap: (value) {
                        setState(() {
                          currenIndex = value;
                        });
                      },
                      items: [
                        BottomNavigationBarItem(
                            icon: SvgPicture.asset(
                              'assets/svg/home_unselected.svg',
                              width: 23,
                              height: 22,
                            ),
                            activeIcon: Image.asset(
                              'assets/images/home_filled.png',
                              width: 23,
                              height: 22,
                            ),
                            label: "Home"),
                        BottomNavigationBarItem(
                            icon: SvgPicture.asset(
                              'assets/svg/search_unselected.svg',
                              width: 23,
                              height: 22,
                            ),
                            activeIcon: Image.asset(
                              'assets/images/search_filled.png',
                              width: 23,
                              height: 22,
                            ),
                            label: "Manage"),
                        BottomNavigationBarItem(
                            icon: Image.asset(
                              'assets/images/request_vet.png',
                              width: 23,
                              height: 22,
                            ),
                            activeIcon: Image.asset(
                              'assets/images/request_vet_filled.png',
                              width: 23,
                              height: 22,
                            ),
                            label: "Request Vet"),
                        BottomNavigationBarItem(
                            icon: SvgPicture.asset(
                              'assets/svg/profile_unselected.svg',
                              width: 23,
                              height: 22,
                            ),
                            activeIcon: Image.asset(
                              'assets/images/profile_filled.png',
                              width: 23,
                              height: 22,
                            ),
                            label: "Profile"),
                      ]),
                ),
              ))
        ],
      ),
      // bottomNavigationBar: ClipRRect(
      //   borderRadius:
      //       const BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      //   child: BottomNavigationBar(
      //       selectedFontSize: 12.0,
      //       selectedLabelStyle: GoogleFonts.inter(),
      //       showUnselectedLabels: true,
      //       showSelectedLabels: true,
      //       selectedItemColor: Theme.of(context).primaryColor,
      //       unselectedItemColor: AppColor.bottomNavIconUnselected,
      //       currentIndex: currenIndex,
      //       unselectedLabelStyle: GoogleFonts.inter(),
      //       type: BottomNavigationBarType.fixed,
      //       onTap: (value) {
      //         setState(() {
      //           currenIndex = value;
      //         });
      //       },
      //       items: [
      //         BottomNavigationBarItem(
      //             icon: SvgPicture.asset(
      //               'assets/svg/home_unselected.svg',
      //               width: 23,
      //               height: 22,
      //             ),
      //             activeIcon: const Icon(Icons.home_filled),
      //             label: "Home"),
      //         BottomNavigationBarItem(
      //             icon: SvgPicture.asset(
      //               'assets/svg/search_unselected.svg',
      //               width: 23,
      //               height: 22,
      //             ),
      //             activeIcon: const Icon(Icons.search),
      //             label: "Manage"),
      //         const BottomNavigationBarItem(
      //             icon: Icon(Icons.article), activeIcon: Icon(Icons.article), label: "Request Vet"),
      //         BottomNavigationBarItem(
      //             icon: SvgPicture.asset(
      //               'assets/svg/profile_unselected.svg',
      //               width: 23,
      //               height: 22,
      //             ),
      //             activeIcon: const Icon(Icons.person),
      //             label: "Profile"),
      //       ]),
      // ),
    );
  }
}
