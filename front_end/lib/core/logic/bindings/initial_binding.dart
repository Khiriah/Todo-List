import 'package:get/get.dart';
import 'package:todolist1/auth/controller/auth_controller.dart';
import 'package:todolist1/core/logic/controllers/theme_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThemeController>(() => ThemeController());
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
