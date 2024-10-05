import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../profile/views/profile_page.dart';
import '../../sidebar/views/sidebar_page.dart';
import '../../statistic/views/statistic_page.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECECEC), // Background color
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 22), // Margin top untuk header
            Center(
              child: Container(
                width: double.infinity, // Membuat header memanjang hingga batas layar
                height: 60, // Tinggi header diperbesar untuk menampung elemen
                padding: EdgeInsets.symmetric(horizontal: 20), // Padding kiri dan kanan untuk jarak
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/profile picture.png"), // Ganti dengan gambar profil
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
                      left: 52,
                      top: 17,
                      child: Text(
                        'Mr. Julius!',
                        style: TextStyle(
                          color: Color(0xFF13AE85),
                          fontSize: 14,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 366,
                      top: 9,
                      child: Container(
                        width: 17,
                        height: 17,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Image.asset(
                          'assets/images/notif.png', // Ganti dengan ikon notifikasi
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 329,
                      top: 9,
                      child: Container(
                        width: 18,
                        height: 18,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Image.asset(
                          'assets/images/material-symbols_search.png', // Ganti dengan ikon pencarian
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 52,
                      top: 5,
                      child: Text(
                        'Good Morning',
                        style: TextStyle(
                          color: Color(0xFF908F8F),
                          fontSize: 10,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Text.rich di bawah header
            SizedBox(height: 25), // Jarak dari header
            Align(
              alignment: Alignment.centerLeft, // Agar teks berada di paling kiri
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0), // Menyesuaikan padding kiri agar sejajar dengan gambar profil
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'You’ve got ',
                        style: TextStyle(
                          color: Color(0xFF13AE85),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w800,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: '8',
                        style: TextStyle(
                          color: Color(0xFFFFAD47),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w800,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: ' tasks today',
                        style: TextStyle(
                          color: Color(0xFF13AE85),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w800,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(height: 28),
            Container(
              width: 397.54,
              height: 58,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 29.54,
                      height: 57,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 29.54,
                              height: 57,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
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
                            left: 9,
                            top: 17,
                            child: SizedBox(
                              width: 18,
                              height: 9,
                              child: Text(
                                'Sun',
                                style: TextStyle(
                                  color: Color(0xFF13AE85),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 30,
                            child: SizedBox(
                              width: 10,
                              height: 7,
                              child: Text(
                                '30',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF13AE85),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
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
                  Positioned(
                    left: 45,
                    top: 1,
                    child: Container(
                      width: 29.54,
                      height: 57,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 29.54,
                              height: 57,
                              decoration: ShapeDecoration(
                                color: Color(0xFF13AE85),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
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
                            left: 6,
                            top: 17,
                            child: SizedBox(
                              width: 19,
                              height: 9,
                              child: Text(
                                'Mon',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 11.45,
                            top: 30,
                            child: SizedBox(
                              width: 7,
                              height: 7,
                              child: Text(
                                '1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
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
                  Positioned(
                    left: 91,
                    top: 1,
                    child: Container(
                      width: 29.54,
                      height: 57,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 29.54,
                              height: 57,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
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
                            left: 8,
                            top: 17,
                            child: SizedBox(
                              width: 18,
                              height: 10,
                              child: Text(
                                'Tue',
                                style: TextStyle(
                                  color: Color(0xFF13AE85),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 29,
                            child: SizedBox(
                              width: 10,
                              height: 7,
                              child: Text(
                                '2',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF13AE85),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
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
                  Positioned(
                    left: 136,
                    top: 1,
                    child: Container(
                      width: 29.54,
                      height: 57,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 29.54,
                              height: 57,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
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
                            left: 7,
                            top: 17,
                            child: SizedBox(
                              width: 19,
                              height: 10,
                              child: Text(
                                'Wed',
                                style: TextStyle(
                                  color: Color(0xFF13AE85),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 29,
                            child: SizedBox(
                              width: 10,
                              height: 7,
                              child: Text(
                                '3',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF13AE85),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
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
                  Positioned(
                    left: 183,
                    top: 1,
                    child: Container(
                      width: 29.54,
                      height: 57,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 29.54,
                              height: 57,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
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
                            left: 8,
                            top: 18,
                            child: SizedBox(
                              width: 17,
                              height: 10,
                              child: Text(
                                'Thu',
                                style: TextStyle(
                                  color: Color(0xFF13AE85),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 29,
                            child: SizedBox(
                              width: 10,
                              height: 7,
                              child: Text(
                                '4',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF13AE85),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
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
                  Positioned(
                    left: 229,
                    top: 1,
                    child: Container(
                      width: 29.54,
                      height: 57,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 29.54,
                              height: 57,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
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
                            left: 10,
                            top: 18,
                            child: SizedBox(
                              width: 12,
                              height: 9,
                              child: Text(
                                'Fri',
                                style: TextStyle(
                                  color: Color(0xFF13AE85),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 29,
                            child: SizedBox(
                              width: 10,
                              height: 7,
                              child: Text(
                                '5',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF13AE85),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
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
                  Positioned(
                    left: 275,
                    top: 1,
                    child: Container(
                      width: 29.54,
                      height: 57,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 29.54,
                              height: 57,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
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
                            left: 8,
                            top: 18,
                            child: SizedBox(
                              width: 14,
                              height: 9,
                              child: Text(
                                'Sat',
                                style: TextStyle(
                                  color: Color(0xFF13AE85),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 29,
                            child: SizedBox(
                              width: 10,
                              height: 7,
                              child: Text(
                                '6',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF13AE85),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
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
                  Positioned(
                    left: 322,
                    top: 0,
                    child: Container(
                      width: 29.54,
                      height: 57,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 29.54,
                              height: 57,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
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
                            left: 8,
                            top: 17,
                            child: SizedBox(
                              width: 14,
                              height: 9,
                              child: Text(
                                'Sun',
                                style: TextStyle(
                                  color: Color(0xFF13AE85),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 30,
                            child: SizedBox(
                              width: 10,
                              height: 7,
                              child: Text(
                                '30',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF13AE85),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
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
                  Positioned(
                    left: 321,
                    top: 1,
                    child: Container(
                      width: 29.54,
                      height: 57,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 29.54,
                              height: 57,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
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
                            left: 8,
                            top: 18,
                            child: SizedBox(
                              width: 17,
                              height: 10,
                              child: Text(
                                'Sun',
                                style: TextStyle(
                                  color: Color(0xFF13AE85),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 29,
                            child: SizedBox(
                              width: 10,
                              height: 7,
                              child: Text(
                                '7',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF13AE85),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
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
                  Positioned(
                    left: 368,
                    top: 1,
                    child: Container(
                      width: 29.54,
                      height: 57,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 29.54,
                              height: 57,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
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
                            left: 7,
                            top: 18,
                            child: SizedBox(
                              width: 18,
                              height: 10,
                              child: Text(
                                'Mon',
                                style: TextStyle(
                                  color: Color(0xFF13AE85),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 29,
                            child: SizedBox(
                              width: 10,
                              height: 7,
                              child: Text(
                                '8',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF13AE85),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
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

            SizedBox(height: 48), // Jarak antara kontainer sebelumnya dan kontainer baru
            // Kontainer baru yang diminta
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), // Padding yang sama dengan header
              child: Container(
                width: 400,
                height: 145,
                child: Stack(
                  children: [
                    Positioned(
                      left: 4,
                      top: 41,
                      child: Container(
                        width: 162,
                        height: 104,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 162,
                                height: 104,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
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
                              left: 125,
                              top: 13,
                              child: Container(
                                width: 17,
                                height: 17,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Image.asset(
                                  'assets/images/ph_pencil-line.png', // Ganti dengan gambar yang diinginkan
                                  color: Color(0xFFFFAD47), // Warna untuk ikon kedua
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 8,
                              top: 77,
                              child: Text(
                                'Tue, 2 Sept',
                                style: TextStyle(
                                  color: Color(0xFF908F8F),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 8,
                              top: 34,
                              child: SizedBox(
                                width: 128,
                                height: 30,
                                child: Text(
                                  'Redesign Splash Screen',
                                  style: TextStyle(
                                    color: Color(0xFF13AE85),
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
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
                    Positioned(
                      left: 185,
                      top: 41,
                      child: Container(
                        width: 162,
                        height: 104,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 162,
                                height: 104,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFFFAD47),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
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
                          left: 125,
                          top: 13,
                          child: Container(
                            width: 17,
                            height: 17,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Image.asset(
                              'assets/images/ph_pencil-line.png', // Ganti dengan gambar yang diinginkan
                              color: Color(0xFFFFFFFF), // Warna untuk ikon pertama
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                            Positioned(
                              left: 8,
                              top: 77,
                              child: Text(
                                'Tue, 2 Sept',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 8,
                              top: 34,
                              child: SizedBox(
                                width: 128,
                                height: 30,
                                child: Text(
                                  'Doing Math Assignments',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
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
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        'To do',
                        style: TextStyle(
                          color: Color(0xFF13AE85),
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 340,
                      top: 5,
                      child: GestureDetector(
                        onTap: () {
                          Get.generalDialog(
                            barrierLabel: "Label",
                            barrierDismissible: true,  // Allows you to dismiss the dialog by tapping outside
                            pageBuilder: (context, animation1, animation2) {
                              return Sidebar();  // Your Sidebar widget goes here
                            },
                            transitionBuilder: (context, animation, secondaryAnimation, child) {
                              const begin = Offset(-1.0, 0.0); // Start position: from the right
                              const end = Offset(0.0, 0.0);   // End position: center (default position)
                              const curve = Curves.easeInOut; // Animation curve

                              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                              return SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                              );
                            },
                            transitionDuration: Duration(milliseconds: 300),  // Duration of the animation
                          );
                        },
                      child: Text(
                        'See all',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF908F8F),
                          fontSize: 9,
                          fontFamily: 'Roboto',
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
            SizedBox(height: 48),
            // Setelah Container "To do" yang sudah ada
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 400,
                height: 142,
                child: Stack(
                  children: [
                    Container(
                      width: 400,
                      height: 142,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              'In Progess',
                              style: TextStyle(
                                color: Color(0xFF13AE85),
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 340,
                            top: 5,
                            child: Text(
                              'See all',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF908F8F),
                                fontSize: 9,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 4,
                            top: 35,
                            child: Container(
                              width: 193,
                              height: 107,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 193,
                                      height: 107,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFC2BFF8),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 9,
                                    top: 10,
                                    child: Container(
                                      width: 26,
                                      height: 26,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 26,
                                              height: 26,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: OvalBorder(),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 4,
                                            top: 4,
                                            child: Container(
                                              width: 18,
                                              height: 18,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(color: Colors.black.withOpacity(0)),
                                              child: Image.asset(
                                                'assets/images/beginner.png', // Ganti dengan asset gambar Anda
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 9,
                                    top: 49,
                                    child: Text(
                                      'Beginner’s Language',
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
                                    left: 162,
                                    top: 6,
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Image.asset(
                                        'assets/images/tabler_dots.png', // Gunakan asset gambar Anda
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 9,
                                    top: 65,
                                    child: Container(
                                      width: 168,
                                      height: 3,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFD9D9D9),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(40),
                                        ),
                                      ),
                                    ),
                                  ),

                                    Positioned(
                                    left: 9,
                                    top: 65,
                                    child: Container(
                                      width: 109,
                                      height: 3,
                                      decoration: ShapeDecoration(
                                        color: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(40),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 9,
                                    top: 84,
                                    child: SizedBox(
                                      width: 45,
                                      child: Text(
                                        'Progress',
                                        style: TextStyle(
                                          color: Color(0xFF908F8F),
                                          fontSize: 8,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 132,
                                    top: 84,
                                    child: SizedBox(
                                      width: 45,
                                      child: Text(
                                        '74%',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Color(0xFF908F8F),
                                          fontSize: 8,
                                          fontFamily: 'Roboto',
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
                          Positioned(
                            left: 217,
                            top: 35,
                            child: Container(
                              width: 193,
                              height: 107,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 193,
                                      height: 107,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFFFB167),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 9,
                                    top: 10,
                                    child: Container(
                                      width: 26,
                                      height: 26,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 26,
                                              height: 26,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: OvalBorder(),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 4,
                                            top: 4,
                                            child: Container(
                                              width: 17,
                                              height: 17,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Image.asset(
                                                'assets/images/advanced.png', // Gunakan asset gambar Anda
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 9,
                                    top: 49,
                                    child: Text(
                                      'Advanced Mathematics ',
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
                                    left: 162,
                                    top: 6,
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Image.asset(
                                        'assets/images/tabler_dots.png', // Gunakan asset gambar Anda
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 9,
                                    top: 65,
                                    child: Container(
                                      width: 168,
                                      height: 3,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFD9D9D9),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(40),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 9,
                                    top: 65,
                                    child: Container(
                                      width: 86,
                                      height: 3,
                                      decoration: ShapeDecoration(
                                        color: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(40),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 9,
                                    top: 84,
                                    child: SizedBox(
                                      width: 45,
                                      child: Text(
                                        'Progress',
                                        style: TextStyle(
                                          color: Color(0xFF908F8F),
                                          fontSize: 8,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 132,
                                    top: 84,
                                    child: SizedBox(
                                      width: 45,
                                      child: Text(
                                        '58%',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Color(0xFF908F8F),
                                          fontSize: 8,
                                          fontFamily: 'Roboto',
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
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 26,
              height: 26,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 26,
                      height: 26,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 4,
                    top: 4,
                    child: Container(
                      width: 17,
                      height: 17,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Image.asset("assets/images/advanced.png"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28),
            Container(
              width: 390,
              height: 123,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Text(
                      'Statistics',
                      style: TextStyle(
                        color: Color(0xFF13AE85),
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),

                  Positioned(
                    left: 330,
                    top: 6,
                    child: GestureDetector(
                      onTap: () {
                        // Navigasi ke HomeView menggunakan GetX
                        Get.dialog(StatisticsPopup());
                      },
                    child: Text(
                      'See all',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF908F8F),
                        fontSize: 9,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  ),
                  Positioned(
                    left: 0,
                    top: 40,
                    child: Container(
                      width: 390,
                      height: 83,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 390,
                              height: 83,
                              decoration: ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(1.00, 0.00),
                                  end: Alignment(-1, 0),
                                  colors: [Color(0xFFFFB167), Color(0xFFC2BFF8)],
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 21,
                            top: 24,
                            child: SizedBox(
                              width: 207,
                              height: 12,
                              child: Text(
                                'Completed Task',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 340,
                            top: 8,
                            child: Container(
                              width: 19,
                              height: 22,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Image.asset(
                                'assets/images/tabler_dots.png', // Gunakan asset gambar Anda
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 29.60,
                            top: 50.42,
                            child: Container(
                              width: 329.06,
                              height: 4,
                              decoration: ShapeDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 21,
                            top: 50.42,
                            child: Container(
                              width: 190,
                              height: 4,
                              decoration: ShapeDecoration(
                                color: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 29.60,
                            top: 65.16,
                            child: SizedBox(
                              width: 88.14,
                              height: 6.98,
                              child: Text(
                                'Progress',
                                style: TextStyle(
                                  color: Color(0xFF908F8F),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 270.52,
                            top: 65.16,
                            child: SizedBox(
                              width: 88.14,
                              height: 6.98,
                              child: Text(
                                '58%',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF908F8F),
                                  fontSize: 8,
                                  fontFamily: 'Roboto',
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

            // Tambahkan ini di bagian bawah Column sebelum widget terakhir
            SizedBox(height: 79),
            Container(
              width: 365,
              height: 63,
              child: Stack(
                children: [
                  Positioned(
                    left: 64,
                    top: 17,
                    child: Container(
                      width: 33,
                      height: 39,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 4,
                            top: 0,
                            child: Container(
                              width: 24,
                              height: 24,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Image.asset(
                                'assets/images/mynaui_home.png', // Update dengan asset baru
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 25,
                            child: Text(
                              'Home',
                              style: TextStyle(
                                color: Color(0xFF545454),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 276,
                    top: 17,

                    child: Container(
                      width: 36,
                      height: 39,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 6,
                            top: 0,
                        child: GestureDetector(
                          onTap: () {
                            Get.to(ProfilePage()); // Navigasi ke halaman register
                          },
                            child: Container(
                              width: 24,
                              height: 24,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Image.asset(
                                'assets/images/gg_profile.png', // Update dengan asset baru
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),),
                          Positioned(
                            left: 0,
                            top: 25,
                            child: Text(
                              'Profile',
                              style: TextStyle(
                                color: Color(0xFF545454),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 165,
                    top: 13,
                    child: Container(
                      width: 41,
                      height: 41,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 41,
                              height: 41,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFF6333),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 9,
                            top: 9,
                            child: Container(
                              width: 24,
                              height: 24,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Image.asset(
                                'assets/images/ic_outline-plus.png', // Update dengan asset baru
                                fit: BoxFit.contain,
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
          ],
        ),
      ),
    );
  }
}
