import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home/views/home_view.dart';
import '../../register/views/register_page.dart';

class LoginPage extends StatelessWidget {
  // Hardcoded username and password
  final String correctUsername = 'admin';
  final String correctPassword = 'admin123';

  // Controllers to capture user input
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFECECEC), // Background color #ECECEC
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight, // Set a finite height
          width: screenWidth, // Set a finite width
          child: Stack(
            children: [
              // Login Image
              Positioned(
                top: 130,
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
                top: 405,
                left: screenWidth / 2 - 90, // Center the text
                child: Text(
                  'a-To-Do-List',
                  style: GoogleFonts.schoolbell(
                    fontSize: 34,
                    color: Colors.black,
                  ),
                ),
              ),

              // "Login" Text
              Positioned(
                top: 305 + 253, // 253 for image height and 305 margin top
                left: 63,
                child: Text(
                  'Login',
                  style: GoogleFonts.outfit(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ),

              // "Please sign in to continue" Text
              Positioned(
                top: 305 + 253 + 40, // 305 + 253 + margin for gap
                left: 63,
                child: Text(
                  'Please sign in to continue',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontSize: 16,
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              // Username Field Container
              Positioned(
                top: 305 + 253 + 90, // Adjust top margin for Username field
                left: 63,
                child: Container(
                  width: 320,
                  height: 40,
                  child: Stack(
                    children: [
                      // Outer Container with rounded border
                      Positioned(
                        left: 0,
                        top: 1.5,
                        child: Opacity(
                          opacity: 0.46,
                          child: Container(
                            width: 320,
                            height: 28,
                            decoration: ShapeDecoration(
                              color: Color(0x0013AE85), // Transparent color
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 2,
                                  strokeAlign: BorderSide.strokeAlignOutside,
                                  color: Colors.black.withOpacity(0.46),
                                ),
                                borderRadius: BorderRadius.circular(90),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Image for Username
                      Positioned(
                        left: 9,
                        top: 5,
                        child: Opacity(
                          opacity: 0.60,
                          child: Container(
                            width: 17,
                            height: 17,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Image.asset(
                              'assets/images/uiw_login.png', // Use your local image asset
                              fit: BoxFit.cover, // Ensure the image covers the container
                            ),
                          ),
                        ),
                      ),

                      // Username TextField
                      Positioned(
                        left: 32,
                        top: -9.5,
                        child: SizedBox(
                          width: 230,
                          child: TextField(
                            controller: usernameController, // Bind controller
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Username',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Password Field Container
              Positioned(
                top: 305 + 253 + 90 + 40, // Adjust top margin for Password field
                left: 63,
                child: Container(
                  width: 320,
                  height: 40,
                  child: Stack(
                    children: [
                      // Outer Container with rounded border
                      Positioned(
                        left: 0,
                        top: 1.5,
                        child: Opacity(
                          opacity: 0.46,
                          child: Container(
                            width: 320,
                            height: 28,
                            decoration: ShapeDecoration(
                              color: Color(0x0013AE85), // Transparent color
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 2,
                                  strokeAlign: BorderSide.strokeAlignOutside,
                                  color: Colors.black.withOpacity(0.46),
                                ),
                                borderRadius: BorderRadius.circular(90),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Image for Password
                      Positioned(
                        left: 8,
                        top: 5.5,
                        child: Opacity(
                          opacity: 0.60,
                          child: Container(
                            width: 19,
                            height: 19,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Image.asset(
                              'assets/images/hugeicons_lock.png', // Use your local image asset
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),

                      // Password TextField
                      Positioned(
                        left: 32,
                        top: -9.5,
                        child: SizedBox(
                          width: 230,
                          child: TextField(
                            controller: passwordController, // Bind controller
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Sign In Button
              Positioned(
                top: 305 + 253 + 90 + 40 + 40 + 30, // Adjust top margin for Sign In button
                left: 63,
                child: GestureDetector(
                  onTap: () {
                    // Check credentials
                    if (usernameController.text == correctUsername &&
                        passwordController.text == correctPassword) {
                      // Navigate to HomeView using GetX if login is successful
                      Get.to(() => HomeView());
                    } else {
                      // Show error message if login fails
                      Get.snackbar('Error', 'Invalid username or password',
                          snackPosition: SnackPosition.BOTTOM);
                    }
                  },
                  child: Container(
                    width: 320,
                    height: 28,
                    child: Stack(
                      children: [
                        // Button Background
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 320,
                            height: 28,
                            decoration: ShapeDecoration(
                              color: Color(0xFF13AE85), // Button color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        // "Sign In" Text
                        Positioned(
                          left: 138,
                          top: 3,
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Outfit', // Use Outfit font
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // "Don’t have account? Sign Up" Text
              Positioned(
                top: 305 + 253 + 90 + 40 + 40 + 30 + 40, // Adjust top margin
                left: 118, // Set left margin to 93
                child: Container(
                  width: 210,
                  height: 18,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Opacity(
                          opacity: 0.62,
                          child: Text(
                            'Don’t have an account?',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.41),
                              fontSize: 14,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 154,
                        top: 0,
                        child: GestureDetector(
                          onTap: () {
                            Get.to(RegisterPage()); // Navigate to register page
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.41),
                              fontSize: 14,
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
            ],
          ),
        ),
      ),
    );
  }
}
