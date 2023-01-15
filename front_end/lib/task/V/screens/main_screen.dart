import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todolist1/task/C/main_controller.dart';
import 'package:todolist1/task/V/screens/add_new_task.dart';

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
            Get.to(const AddNewTask());
          },
            icon: const Icon(Icons.add),),
          title: Text(
            controller.title[controller.currentIndex.value],
            style: Theme.of(context).textTheme.headline5,
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              activeIcon: Icon(
                Icons.home,
              ),
              icon: Icon(
                Icons.home,
              ),

            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.favorite,
              ),
              icon: Icon(
                Icons.favorite,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.person_pin,
                // color: Colors.black,
              ),
              icon: Icon(
                Icons.person_pin,
              ),
              label: 'Profile',
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
