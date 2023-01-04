import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todolist1/C/main_controller.dart';
import 'package:todolist1/V/screens/add_new_task.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Obx(() {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(onPressed: () {
            Get.to(AddNewTask());
          }, icon: Icon(Icons.add),),
          title: Text(
            controller.title[controller.currentIndex.value],
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          type: BottomNavigationBarType.fixed,
          
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                // color: Colors.black,
              ),
              icon: Icon(
                Icons.home,
                // color: Get.isDarkMode ? Colors.grey : Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.favorite,
                // color: Colors.black,
              ),
              icon: Icon(
                Icons.favorite,
                // color: Get.isDarkMode ? Colors.grey : Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.person_pin,
                // color: Colors.black,
              ),
              icon: Icon(
                Icons.person_pin,
                // color: Get.isDarkMode ? Colors.grey : Colors.white,
              ),
              label: '',
            ),
          ],
          onTap: (index) {
            controller.currentIndex.value = index;
          },
        ),
        body: IndexedStack(
          index: controller.currentIndex.value,
          children: controller.tabs.value,
        ),
      );
    }));
  }
}
