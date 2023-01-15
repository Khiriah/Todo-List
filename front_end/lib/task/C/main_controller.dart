import 'package:get/get.dart';
import 'package:todolist1/auth/view/profile_screen.dart';
import 'package:todolist1/task/V/screens/complete_screen.dart';
import 'package:todolist1/task/V/screens/home_screen.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  var tabs = [
    HomeScreen(),
    CompleteScreen(),
    ProfileScreen(),
  ].obs;

  var title = [
    "To Do List",
    'Complete',
    "Profile",
  ].obs;
}
