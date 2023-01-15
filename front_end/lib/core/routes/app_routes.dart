import 'package:get/get.dart';
import 'package:todolist1/auth/view/login_screen.dart';
import 'package:todolist1/auth/view/signin_screen.dart';
import 'package:todolist1/core/logic/bindings/initial_binding.dart';
import 'package:todolist1/task/V/screens/main_screen.dart';
import 'package:todolist1/task/V/screens/welcome_screen.dart';


abstract class Routes {
  static const HOME = Paths.home;
  static const WELCOME = Paths.welcome;

  static final routes = [
    GetPage(
        name: Paths.home,
        page: () =>  MainScreen(),
        bindings: [
          InitialBinding(),
        ]
    ),
    GetPage(
        name: Paths.welcome,
        page: () =>  WelcomeScreen(),
        bindings: [
          InitialBinding(),
        ]
    ),    GetPage(
        name: Paths.login,
        page: () => const LogInScreen(),
        bindings: [
          InitialBinding(),
        ]
    ),    GetPage(
        name: Paths.signin,
        page: () => const SignInScreen(),
        bindings: [
          InitialBinding(),
        ]
    ),
  ];
}

abstract class Paths {
  static const home = '/home';
  static const welcome = '/welcome_screen';
  static const login = '/login_screen';
  static const signin = '/signin_screen';
}
