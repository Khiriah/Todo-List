
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todolist1/M/complate.dart';

List<Todo> MIFromJson(String str) =>
    List<Todo>.from(json.decode(str).map((x) => Todo.fromJson(x)));

class CounterController extends GetxController {


  var todo = [

  ].obs;


  void remove(index){
    todo.removeAt(index);
  }
  }









class CounterControllerComplate extends GetxController {

  var complate = [

  ].obs;


  void add(value){
    complate.add(value);
  }
  void remove( index){
    complate.removeAt(index);
  }
}


