// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:todolist1/C/counter-controller.dart';
// import 'package:todolist1/M/complete_screen.dart';
// import 'package:todolist1/M/card_items.dart';
// import 'package:todolist1/V/W/card_items.dart';
// import 'package:get/get_core/src/get_main.dart';
//
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   var titlecontroller = TextEditingController();
//   var deccontroller = TextEditingController();
//   String? newtask;
//   int _selectedIndex = 0;
//   var counterController = Get.put(CounterController());
//   final screens = [ToDo(), Complate(title: "title", dec: "dec"),];
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: const Text(
//           "My to do list",
//           textAlign: TextAlign.left,
//         ),
//       ),
//       body: screens[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Theme.of(context).primaryColor,
//         unselectedItemColor: Colors.white.withOpacity(0.7),
//         selectedItemColor: Colors.white,
//         currentIndex: _selectedIndex,
//         onTap: (index) => setState(() {
//           _selectedIndex = index;
//         }
//         ),
//         items:  [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.fact_check_outlined),
//             label: 'Todo',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.done, size: 28),
//             label: 'Complete',
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//         backgroundColor: Colors.teal,
//         onPressed: ()
//         {
//           showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 return AlertDialog(
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20)),
//                   title: const Text(
//                     "Add To Do List",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 22,
//                     ),
//                   ),
//                   content: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         TextFormField(
//                           controller: titlecontroller,
//                           decoration: InputDecoration(
//                               border: UnderlineInputBorder(),
//                               labelText: 'Title'),
//                           onChanged: (String value) {
//
//                           },
//                         ),
//                         TextFormField(
//                           controller: deccontroller,
//                           decoration: InputDecoration(
//                             border: UnderlineInputBorder(),
//                             labelText: 'Description',
//                           ),
//                           maxLines: 1,
//                           onChanged: (String value) {
//
//                           },
//                         ),
//                       ]),
//                   actions: <Widget>[
//                     TextButton(
//                         onPressed: Navigator.of(context).pop,
//                         child: const Text('CANCEL')),
//                     TextButton(
//                       onPressed: () {
//                         if (titlecontroller.text.isEmpty ) {
//                           showDialog(
//                               context: context,
//                               builder: (BuildContext context) {
//                                 return const AlertDialog(
//                                   icon: Icon(
//                                     Icons.error,
//                                     color: Colors.red,
//                                   ),
//                                   title: Text(
//                                     "The Titel Cannot be empty",
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 22,
//                                     ),
//                                   ),
//
//                                 );
//                               });
//                         } else {
//
//                           counterController.todo.add(Todo(title: titlecontroller.text, dec: deccontroller.text));
//                           Get.back();
//                           print(counterController.todo);
//                         }
//                       },
//
//                       child: const Text("ADD"),
//                     ),
//                   ],
//                 );
//               });
//         },
//         child: const Icon(
//           Icons.add,
//           color: Colors.white,
//         ),
//       ),
//
//     );
//   }
// }



import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("HomeScreen");
  }
}
