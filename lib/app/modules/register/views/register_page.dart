import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home/views/home_view.dart';
import '../../login/views/login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: Color(0xFFECECEC), // Background color
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Login Image
            Positioned(
              top: 100,
              left: 115,
              child: Image.asset(
                'assets/images/login.png',
                width: 253,
                height: 253,
                fit: BoxFit.cover,
              ),
            ),

            // "a-To-Do-List" Text
            Positioned(
              top: 375,
              left: screenWidth / 2 - 90, // Center the text
              child: Text(
                'a-To-Do-List',
                style: GoogleFonts.schoolbell(
                  fontSize: 34,
                  color: Colors.black,
                ),
              ),
            ),

            // Container for Name Input
            Positioned(
              top: 480, // Adjust this value for the position of the Container
              left: 63, // Margin left
              child: Container(
                width: 316,
                height: 58,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 25,
                      child: Container(
                        width: 316,
                        height: 33,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF6F6F6),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 13,
                      top: 35,
                      child: SizedBox(
                        width: 169,
                        height: 20,
                        child: Text(
                          'Your name',
                          style: const TextStyle(
                            color: Color(0xFF545454),
                            fontSize: 13,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 3,
                      top: 0,
                      child: SizedBox(
                        width: 53,
                        height: 21,
                        child: Text(
                          'NAME',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Container for Email Input
            Positioned(
              top: 550, // Adjust this value for the position of the Container
              left: 63, // Margin left
              child: Container(
                width: 316,
                height: 58,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 25,
                      child: Container(
                        width: 316,
                        height: 33,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF6F6F6),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 13,
                      top: 35,
                      child: SizedBox(
                        width: 169,
                        height: 20,
                        child: Text(
                          'Your email',
                          style: const TextStyle(
                            color: Color(0xFF545454),
                            fontSize: 13,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 3,
                      top: 0,
                      child: SizedBox(
                        width: 56,
                        height: 21,
                        child: Text(
                          'EMAIL',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Container for Password Input
            Positioned(
              top: 620, // Adjust this value for the position of the Container
              left: 63, // Margin left
              child: Container(
                width: 316,
                height: 60,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 26,
                      child: Container(
                        width: 316,
                        height: 34,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF6F6F6),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 13,
                      top: 36,
                      child: SizedBox(
                        width: 236,
                        height: 20,
                        child: Text(
                          'Your password',
                          style: const TextStyle(
                            color: Color(0xFF545454),
                            fontSize: 13,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 3,
                      top: 0,
                      child: SizedBox(
                        width: 102,
                        height: 21,
                        child: Text(
                          'PASSWORD',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Container for Date of Birth Input
            Positioned(
              top: 690, // Adjust this value for the position of the Container
              left: 63, // Margin left
              child: Container(
                width: 316,
                height: 62,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 28,
                      child: Container(
                        width: 316,
                        height: 34,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF6F6F6),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 13,
                      top: 38,
                      child: SizedBox(
                        width: 201,
                        height: 20,
                        child: Text(
                          'dd/mm/yyyy',
                          style: const TextStyle(
                            color: Color(0xFF545454),
                            fontSize: 13,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 3,
                      top: 0,
                      child: SizedBox(
                        width: 135,
                        height: 21,
                        child: Text(
                          'DATE OF BIRTH',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Container for Register Button
            Positioned(
              bottom: 170, // Adjust this value to position the button
              left: screenWidth / 2 - 82.715, // Center the button
              child: GestureDetector(
                onTap: () {
                  // Navigasi ke HomeView menggunakan GetX
                  Get.to(() => HomeView());
                },
              child: Container(
                width: 165.43,
                height: 35.09,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 165.43,
                        height: 35.09,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF13AE85),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 5.72,
                      top: 7.09,
                      child: SizedBox(
                        width: 151,
                        height: 20,
                        child: Text(
                          'Register',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ),

            // Text.rich for account check
            Positioned(
              bottom: 140, // Adjust this value to position the text
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'If you already have an account, just ',
                      style: TextStyle(
                        color: Color(0xFF9E9E9E),
                        fontSize: 12,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),

                    TextSpan(
                      text: 'Log In',
                      style: const TextStyle(
                        color: Color(0xFF7D7D7D),
                        fontSize: 12,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        Get.to(() => LoginPage()); // Navigasi ke login page
                      },

                    ),
                    const TextSpan(
                      text: '.',
                      style: TextStyle(
                        color: Color(0xFF9E9E9E),
                        fontSize: 12,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
