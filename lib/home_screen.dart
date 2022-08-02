import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:learn_getx/getx_example/Todo_Screen.dart';
import 'package:learn_getx/getx_example/increment_decrement.dart';
import 'package:learn_getx/utils_example.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX with flutter"),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Get.to(() => UtilsExample(),
                  curve: Curves.fastLinearToSlowEaseIn,
                  duration: const Duration(seconds: 2));
            },
            leading: Icon(
              Icons.person,
              color: Colors.orange,
            ),
            title: Text("GetX Utils"),
          ),
          ListTile(
            onTap: () {
              Get.to(() => TodoScreen());
            },
            leading: Icon(
              Icons.person,
              color: Colors.orange,
            ),
            title: Text("Example"),
          ),
          ListTile(
            onTap: () {
              Get.to(() => IncrementDecrement(),
                  curve: Curves.bounceInOut,
                  duration: const Duration(seconds: 2));
            },
            leading: Icon(
              Icons.person,
              color: Colors.orange,
            ),
            title: Text("Example 1"),
          ),
        ],
      ),
    );
  }
}
