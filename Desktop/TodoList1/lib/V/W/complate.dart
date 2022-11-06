import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../C/counter-controller.dart';

class Complate extends StatelessWidget {
   Complate({Key? key}) : super(key: key);
   var counterController = Get.put(CounterControllerComplate());




  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
        itemCount: counterController.complate.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              margin: const EdgeInsets.all(8),
          elevation: 2.4,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
          child:ListTile(
              title: Text(counterController.complate[index].title),
             subtitle:Text(counterController.complate[index].dec) ,
              trailing: IconButton(
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onPressed: () {
                  counterController.remove(index);
                    // counterController.remove(index);
                  })));
        }));
  }
}
