import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late bool isDarkTheme = false;
  late bool themeGetStorageSetting = false;


  final settingsGetStorageBox = GetStorage();


  late Color textColor;
  double fontSize = 20;
  late AnimationController animationController;

  Rx<String> currentModeName = ''.obs;

  @override
  void onInit() {

    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 430));
    animationController.reset();
    super.onInit();
  }



  ThemeMode get themeStateFromGetStorageSettingBox =>
      getThemeFromGetStorageBox() ? ThemeMode.dark : ThemeMode.light;


  bool getThemeFromGetStorageBox() {
    themeGetStorageSetting = settingsGetStorageBox.read('isDarkMode') ?? false;
    currentModeName.value = themeGetStorageSetting ? 'Dark' : 'Light';
    textColor = themeGetStorageSetting ? Colors.white : Colors.red;
    fontSize = themeGetStorageSetting ? 30 : 20;
    return themeGetStorageSetting;
  }


  void _updateGetStorageThemeSetting(bool boolData) {
    settingsGetStorageBox.write('isDarkMode', boolData);
  }


  void changeTheme({
    required bool isDarkMode,
    required Rx<String> modeName,
  }) {
    if (Get.isDarkMode) {
      modeName.value = 'Light';
      isDarkMode = false;
      isDarkTheme = false;
      _updateGetStorageThemeSetting(false);
      _changeThemeMode(ThemeMode.light);
    } else {
      modeName.value = 'Dark';
      isDarkMode = true;
      isDarkTheme = true;
      _updateGetStorageThemeSetting(true);
      _changeThemeMode(ThemeMode.dark);
    }
  }


  void _changeThemeMode(ThemeMode themeMode) => Get.changeThemeMode(themeMode);


  void changeAppTheme() => _changeTheme();


  bool toggleTheme() {
    _changeTheme();
    return isDarkTheme;
  }


  void _animate() {
    if (isDarkTheme) {
      fontSize = 30;
      textColor = Colors.white;
      animationController.reverse();
    } else {
      fontSize = 20;
      textColor = Colors.red;
      animationController.forward();
    }
  }


  void _changeTheme() {
    changeTheme(
      isDarkMode: isDarkTheme,
      modeName: currentModeName,
    );
    _animate();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
