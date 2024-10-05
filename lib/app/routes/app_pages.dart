import 'package:get/get.dart';
import 'package:tugaskelompok1/app/modules/welcome/views/welcome_page.dart';

import '../modules/home/views/home_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: _Paths.WELCOME,
      page: () => WelcomePage(),
      binding: WelcomeBinding(),
    ),
  ];
}
