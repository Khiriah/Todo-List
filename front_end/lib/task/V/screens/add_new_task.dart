import 'package:flutter/material.dart';

class AddNewTask extends StatelessWidget {
  const AddNewTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Task",),
      ),
      body: Container(
        color:Colors.red ,
      ),
    );
  }
}
