import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../editprofile/views/edit_profile_view.dart';
import '../../home/views/home_view.dart';
import '../../register/views/register_page.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double scaleFactor = 1.3;
    return Scaffold(
      backgroundColor: Color(0xFFECECEC), // Background color #ECECEC
      body: Container(
        // Remove SingleChildScrollView to allow full-screen size
        height: MediaQuery.of(context).size.height, // Full height
        width: MediaQuery.of(context).size.width, // Full width
        child: Stack(
          children: [
            // Login Image
            Container(
              width: double.infinity * scaleFactor,
              // Use double.infinity for full width
              height: double.infinity * scaleFactor,
              // Use double.infinity for full height
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: 164,
                    top: 67,
                    child: Container(
                      width: 118,
                      height: 140,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 25,
                            top: 0,
                            child: Container(
                              width: 67,
                              height: 67,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/profile picture.png"),
                                  fit: BoxFit.cover,
                                ),
                                shape: OvalBorder(),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 1,
                                    offset: Offset(0, 1),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 72,
                            child: Text(
                              'Mr. Julius',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 95,
                            child: Text(
                              'julius123@gmail.com',
                              style: TextStyle(
                                color: Color(0xFF908F8F),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 18,
                            top: 118,
                            child: Container(
                              width: 81,
                              height: 22,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.to(
                                            EditProfileView()); // Navigate to register page
                                      },
                                      child: Container(
                                        width: 81,
                                        height: 22,
                                        decoration: ShapeDecoration(
                                          color: Colors.black,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    top: 5,
                                    child: Text(
                                      'Edit Profile',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
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
                  Positioned(
                    left: 40,
                    top: 257,
                    child: Container(
                      width: 346,
                      height: 106,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 1,
                            top: 0,
                            child: Text(
                              'Inventories',
                              style: TextStyle(
                                color: Color(0xFF908F8F),
                                fontSize: 10,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 24,
                            child: Container(
                              width: 343,
                              height: 82,
                              decoration: ShapeDecoration(
                                color: Color(0xFFF1F1F1),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Color(0xFFC8C8C8)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 7,
                            top: 64,
                            child: Container(
                              width: 324,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF908F8F),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 32,
                            child: Container(
                              width: 346,
                              height: 24,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 23,
                                      height: 23,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        shadows: [
                                          BoxShadow(
                                            color: Color(0x3F000000),
                                            blurRadius: 1,
                                            offset: Offset(0, 0.50),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 2,
                                    top: 2,
                                    child: Container(
                                      width: 19,
                                      height: 19,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Image.asset(
                                        'assets/images/mingcute_task-2-line.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 32,
                                    top: 6,
                                    child: Text(
                                      'My Task',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 77,
                                    top: 6,
                                    child: Container(
                                      width: 11,
                                      height: 11,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF0AB946),
                                        shape: OvalBorder(),
                                        shadows: [
                                          BoxShadow(
                                            color: Color(0x3F000000),
                                            blurRadius: 1,
                                            offset: Offset(0, 0.50),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 81,
                                    top: 8,
                                    child: SizedBox(
                                      width: 4,
                                      height: 8,
                                      child: Text(
                                        '8',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 6,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 316,
                                    top: 5,
                                    child: Transform(
                                      transform: Matrix4.identity()
                                        ..translate(0.0, 0.0)
                                        ..rotateZ(1.57),
                                      child: Container(
                                        width: 19,
                                        height: 19,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Image.asset(
                                          'assets/images/lucide_arrow-up.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 70,
                            child: Container(
                              width: 346,
                              height: 24,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 23,
                                      height: 23,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        shadows: [
                                          BoxShadow(
                                            color: Color(0x3F000000),
                                            blurRadius: 1,
                                            offset: Offset(0, 0.50),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 3,
                                    top: 3,
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Image.asset(
                                        'assets/images/bx_support.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 32,
                                    top: 6,
                                    child: Text(
                                      'Support',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 316,
                                    top: 5,
                                    child: Transform(
                                      transform: Matrix4.identity()
                                        ..translate(0.0, 0.0)
                                        ..rotateZ(1.57),
                                      child: Container(
                                        width: 19,
                                        height: 19,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Image.asset(
                                          'assets/images/lucide_arrow-up.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
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
                  Positioned(
                    left: 40,
                    top: 380,
                    child: Container(
                      width: 346,
                      height: 148,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 1,
                            top: 0,
                            child: Text(
                              'Preferences',
                              style: TextStyle(
                                color: Color(0xFF908F8F),
                                fontSize: 10,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 24,
                            child: Container(
                              width: 346,
                              height: 124,
                              decoration: ShapeDecoration(
                                color: Color(0xFFF1F1F1),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Color(0xFFC8C8C8)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 7,
                            top: 64,
                            child: Container(
                              width: 324,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF908F8F),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 7,
                            top: 107,
                            child: Container(
                              width: 324,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF908F8F),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 32,
                            child: Container(
                              width: 113,
                              height: 23,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 23,
                                      height: 23,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        shadows: [
                                          BoxShadow(
                                            color: Color(0x3F000000),
                                            blurRadius: 1,
                                            offset: Offset(0, 0.50),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 32,
                                    top: 6,
                                    child: Text(
                                      'Push notifications',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 73,
                            child: Container(
                              width: 346,
                              height: 24,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 23,
                                      height: 23,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        shadows: [
                                          BoxShadow(
                                            color: Color(0x3F000000),
                                            blurRadius: 1,
                                            offset: Offset(0, 0.50),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 3,
                                    top: 3,
                                    child: Container(
                                      width: 17,
                                      height: 17,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Image.asset(
                                        'assets/images/uil_setting.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 32,
                                    top: 6,
                                    child: Text(
                                      'Setting',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 316,
                                    top: 5,
                                    child: Transform(
                                      transform: Matrix4.identity()
                                        ..translate(0.0, 0.0)
                                        ..rotateZ(1.57),
                                      child: Container(
                                        width: 19,
                                        height: 19,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Image.asset(
                                          'assets/images/lucide_arrow-up.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 115,
                            child: Container(
                              width: 64,
                              height: 23,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 23,
                                      height: 23,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFF5C1C1),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        shadows: [
                                          BoxShadow(
                                            color: Color(0x3F000000),
                                            blurRadius: 1,
                                            offset: Offset(0, 0.50),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 3,
                                    top: 3,
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Image.asset(
                                        'assets/images/material-symbols_logout.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 32,
                                    top: 6,
                                    child: Text(
                                      'Logout',
                                      style: TextStyle(
                                        color: Color(0xFFF13232),
                                        fontSize: 10,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
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
                  Positioned(
                    left: 60,
                    top: 70,
                    child: GestureDetector(
                      onTap: () {
                        // Navigasi ke HomeView menggunakan GetX
                        Get.back();
                      },
                      child: Container(
                        width: 36,
                        height: 36,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        transform: Matrix4.rotationY(3.1416),
                        child: Image.asset(
                          'assets/images/lucide_arrow-up.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 57,
                    top: 415,
                    child: Container(
                      width: 17,
                      height: 17,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Image.asset(
                        'assets/images/mdi_bell-outline.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 328,
                    top: 416,
                    child: Container(
                      width: 39,
                      height: 21,
                      decoration: ShapeDecoration(
                        color: Color(0xFF0AB946),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 1,
                            offset: Offset(0, 0.50),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 348,
                    top: 418,
                    child: Container(
                      width: 17,
                      height: 17,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
