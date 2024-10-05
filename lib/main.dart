import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/modules/welcome/bindings/welcome_binding.dart';
import 'app/modules/welcome/views/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'a-To-Do-List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: WelcomeBinding(),  // Set the WelcomeBinding as the initial binding
      home: WelcomePage(),  // Set WelcomePage as the default page
    );
  }
}
