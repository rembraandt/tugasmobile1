import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../login/views/login_page.dart';
import '../controllers/welcome_controller.dart';

class WelcomePage extends StatelessWidget {
  final WelcomeController controller = Get.put(WelcomeController());

  @override
  Widget build(BuildContext context) {
    // Get screen size for responsive design
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFECECEC), // Background Color
      body: Stack(
        children: [
          // Top Rectangle
          Positioned(
            top: 0,
            child: Container(
              height: size.height * 0.54, // 54% of screen height
              width: size.width * 0.95,   // 95% of screen width
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.025), // Centered rectangle
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), // Top radius 20
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(90), // Bottom radius 90
                  bottomRight: Radius.circular(90),
                ),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/welcome.png',
                  width: 306,
                  height: 306,
                ),
              ),
            ),
          ),

          // Bottom Rectangle with Texts and Button
          Positioned(
            bottom: 0,
            child: Container(
              height: size.height * 0.40,  // 40% of screen height
              width: size.width * 0.95,    // 95% of screen width
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.025), // Centered rectangle
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(90), // Top radius 90
                  topRight: Radius.circular(90),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 28), // 14px space before the first text

                    // Title Text
                    Text(
                      'a-To-Do-List',
                      style: GoogleFonts.schoolbell(
                        fontSize: 34,
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(height: 28), // 14px space between texts

                    // Description Text
                    Text(
                      "Take control of your tasks with a-To-Do-List! Whether it's school assignments or daily to-dos, this app helps you organize, prioritize, and stay on track. Plan ahead, meet every deadline, and boost your productivity effortlessly. Make life simpler and more efficient—start using a-To-Do-List today!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.outfit(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(height: 50), // 14px space before the button image

                    // Button Start Image
                    GestureDetector(
                      onTap: () {
                    // Navigate to LoginPage using GetX
                        Get.to(LoginPage());
                      },
                      child: Image.asset(
                        'assets/images/buttonstart.png',
                        width: size.width * 0.20,  // 20% of screen width
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
