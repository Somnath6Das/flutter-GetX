import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UtilsExample extends StatelessWidget {
  const UtilsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Utils Function"),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Get.snackbar('Getx snackbar',
                  'Microsoft has the most selling operating system',
                  colorText: Colors.white, backgroundColor: Colors.green[400]);
            },
            title: Text("Snackbar in Getx"),
          ),
          ListTile(
            onTap: () {
              Get.defaultDialog(
                  title: "Getx Dialog",
                  content: Container(
                    width: double.infinity,
                    height: 100,
                    child: Column(children: [
                      Text("Google Is the world best search ingine")
                    ]),
                  ));
            },
            title: Text("Dialog in Getx"),
          ),
          ListTile(
            onTap: () {
              Get.bottomSheet(Container(
                color: Colors.white,
                width: double.infinity,
                height: 100,
                child: Column(
                    children: [Text("Apple has the most stable phone,tab and computer")]),
              ));
            },
            title: Text("Getx BottomSheet"),
          ),
        ],
      ),
    );
  }
}
