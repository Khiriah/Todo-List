import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:todolist1/C/counter-controller.dart';

import '../../C/counter-controller.dart';
import '../../C/counter-controller.dart';
import '../../M/complate.dart';

class ToDo extends StatelessWidget {
  ToDo({Key? key}) : super(key: key);
  bool _isChecked = true;
  var counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
        itemCount: counterController.todo.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: const EdgeInsets.all(8),
            elevation: 2.4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              title: Text(counterController.todo[index].title),
              subtitle: Text(counterController.todo[index].dec),
              trailing: IconButton(
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),

                  onPressed: () {
                    counterController.remove(index);
                  }
              ),

              //IconButton(onPressed: print('Still Working on it!'), icon: const Icon(Icons.edit)),


              // Checkbox(
              //   activeColor: Color.fromARGB(255, 66, 132, 165),
              //     onChanged: (val) { counterController.todo.add(Todo(title: counterController.todo[index].title.text,
              //         dec: counterController.todo[index].dec));}, value: _isChecked,
              // ),

            ),
          );
        })
    );



  }
}
