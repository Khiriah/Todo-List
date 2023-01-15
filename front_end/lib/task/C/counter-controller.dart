import 'package:get/get.dart';

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


