import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/Localization/local_screen.dart';
import 'package:learn_getx/contact/contact_book.dart';
import 'package:learn_getx/getx_example/Todo_Screen.dart';
import 'package:learn_getx/getx_example/increment_decrement.dart';
import 'package:learn_getx/sharepref_getx.dart';
import 'package:learn_getx/utils_example.dart';
import 'package:learn_getx/Localization/Localization.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = false;

    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX with flutter"),
        leading: IconButton(
          icon:Icon(Icons.dark_mode),
          onPressed: () {
            if (isDark) {
              Get.changeTheme(ThemeData.light());
            } else {
              Get.changeTheme(ThemeData.dark());
            }
            isDark = !isDark;
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Get.to(() => UtilsExample(),
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: const Duration(seconds: 2));
              },
              leading: Icon(
                Icons.warning_amber_rounded,
                color: Colors.orange,
              ),
              title: Text("GetX Utils"),
            ),
            ListTile(
              onTap: () {
                Get.to(() => TodoScreen());
              },
              leading: Icon(
                Icons.today_outlined,
                color: Colors.green,
              ),
              title: Text("Todo App"),
            ),
            ListTile(
              onTap: () {
                Get.to(() => IncrementDecrement(),
                    curve: Curves.bounceInOut,
                    duration: const Duration(seconds: 2));
              },
              leading: Icon(
                Icons.text_increase_rounded,
                color: Colors.red,
              ),
              title: Text("Increment Decrement"),
            ),
            ListTile(
              onTap: () {
                Get.to(() => ContractBook());
              },
              leading: Icon(
                Icons.people,
                color: Colors.blue,
              ),
              title: Text("Contract Book"),
            ),
            ListTile(
              onTap: () {
                Get.to(() => LocalScreen());
              },
              leading: Icon(
                Icons.translate,
                color: Colors.purple,
              ),
              title: Text("Localization"),
            ),
            ListTile(
              onTap: () {
                Get.to(() => Sharepref_getx());
              },
              leading: Icon(
                Icons.storage_rounded,
                color: Colors.yellow,
              ),
              title: Text("Share Pref"),
            ),
          ],
        ),
      ),
    );
  }
}
