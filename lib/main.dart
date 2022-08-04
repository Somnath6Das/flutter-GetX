import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/Localization/localization.dart';
import 'package:learn_getx/home_screen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
      translations: LocalizationService(),
      home: HomeScreen(),
    );
  }
}

