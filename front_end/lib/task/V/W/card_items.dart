import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todolist1/task/C/counter-controller.dart';

  class CardItems extends StatelessWidget {
    CardItems({Key? key}) : super(key: key);
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
                  ),
                  onPressed: () {
                    counterController.remove(index);
                  }
              ),
            ),
          );
        })
    );
  }
}
