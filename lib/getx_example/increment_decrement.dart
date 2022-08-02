import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IncrementDecrement extends StatelessWidget {
  var tapped = 0.obs;

  incrementTap() {
    tapped++;
  }

  decrementTap() {
    tapped--;
  }

  int buildTime = 0;

  @override
  Widget build(BuildContext context) {
    buildTime++;
    print('Build method run $buildTime times');
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "Button is pressed $tapped times",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    incrementTap();
                  },
                  child: Icon(
                    Icons.exposure_minus_1_rounded,
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    incrementTap();
                  },
                  child: Icon(
                    Icons.plus_one,
                  ),
                ),
              ],
            ),
            FloatingActionButton(
              onPressed: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back),
            ),
          ],
        ),
      ),
    );
  }
}
