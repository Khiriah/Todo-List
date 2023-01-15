import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todolist1/core/logic/controllers/theme_controller.dart';
import 'package:todolist1/core/routes/app_routes.dart';
import 'package:todolist1/core/theme/theme.dart';



class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});
  final controller = Get.find<ThemeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: SizedBox(
              height: 400,
              width: double.infinity,
              child: Image.asset(
                Get.isDarkMode
                    ? "assets/personLight.png"
                    : "assets/personDark.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              const Spacer(),
                // RichText(
                //   textAlign: TextAlign.center,
                //   text: TextSpan(
                //     children: [
                //       TextSpan(
                //         text: "BAKING LESSONS\n",
                //         style: Theme.of(context).textTheme.headline4,
                //       ),
                //       TextSpan(
                //         text: "MASTER THE ART OF BAKING",
                //         style: Theme.of(context).textTheme.headline5,
                //       )
                //     ],
                //   ),
                // ),
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Get.offNamed(Paths.login);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 25),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 26, vertical: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Get.isDarkMode?darkColor:lightColor,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 15)
                          ]),
                      child: Row(
                        children:  <Widget>[
                          Text(
                            'START',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const SizedBox(width: 10),
                          const Icon(
                            Icons.arrow_forward,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
