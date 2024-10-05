import 'package:flutter/material.dart';
import '../../profile/views/profile_page.dart';

class EditProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        // Tambahkan padding kiri 150px
        child: ListView(
          children: [
            Container(
              width: 360,
              height: 640,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  // Profile Header
                  Positioned(
                    left: 137,
                    top: 170,
                    child: Text(
                      'CHANGE AVATAR',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigasi ke halaman ProfilePage
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .transparent, // Membuat latar belakang transparan
                        shadowColor: Colors.transparent, // Menghapus bayangan
                        padding: EdgeInsets.zero, // Menghapus padding default
                      ),
                      child: Icon(
                        Icons.arrow_back, // Ikon panah kembali
                        size: 19,
                        color: const Color.fromARGB(255, 126, 126,
                            126), // Set warna ikon yang diinginkan
                      ),
                    ),
                  ),

                  Positioned(
                    left: -1,
                    top: 13,
                    child: Container(
                      width: 361.50,
                      height: 31.50,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 174,
                            top: 0,
                            child: SizedBox(
                              width: 54,
                              height: 18,
                              child: Text(
                                'Profile',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
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
                  // Profile Image
                  Positioned(
                    left: 161,
                    top: 76,
                    child: Container(
                      width: 67,
                      height: 67,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage("assets/images/profile picture.png"),
                          // Ganti dengan gambar profil
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
                  // Name Field
                  Positioned(
                    left: 34,
                    top: 229,
                    child: _buildTextField('NAME', 'Your name'),
                  ),
                  // Email Field
                  Positioned(
                    left: 34,
                    top: 296,
                    child: _buildTextField('EMAIL', 'Your email'),
                  ),
                  // Password Field
                  Positioned(
                    left: 34,
                    top: 363,
                    child: _buildTextField('PASSWORD', 'Your password'),
                  ),
                  // Date of Birth Field
                  Positioned(
                    left: 34,
                    top: 432,
                    child: _buildTextField('DATE OF BIRTH', 'dd/mm/yyyy'),
                  ),
                  // Delete Account Button
                  Positioned(
                    left: 97,
                    top: 534,
                    child: _buildDeleteButton(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint) {
    return Container(
      width: 306,
      height: 58,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 25,
            child: Container(
              width: 306,
              height: 33,
              decoration: ShapeDecoration(
                color: Color(0xFFF6F6F6),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1),
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
                hint,
                style: TextStyle(
                  color: Color(0xFF545454),
                  fontSize: 13,
                  fontFamily: 'Roboto',
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
                label,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDeleteButton() {
    return Container(
      width: 165.43,
      height: 35.09,
      decoration: ShapeDecoration(
        color: Color(0xFFFFAD47),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Center(
        child: Text(
          'Delete Account',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFE10000),
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
