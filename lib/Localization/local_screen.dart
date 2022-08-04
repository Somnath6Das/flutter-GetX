import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/Localization/localization.dart';

class LocalScreen extends StatefulWidget {
  LocalScreen({Key? key}) : super(key: key);

  @override
  State<LocalScreen> createState() => _LocalScreenState();
}

class _LocalScreenState extends State<LocalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Localization through Getx',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const SizedBox(height: 10),
     
              Text(
        'quote'.tr,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
        
             MaterialButton(
                onPressed: () {
                  LocalizationService().changeLocale('English');
                  setState(() {
                    
                  });
                },
                color: Colors.blue[900],
                minWidth: double.infinity,
                child: Text(
                  'English',
                  style: TextStyle(color: Colors.white),
                ),
              ),
           MaterialButton(
                onPressed: () {
                  LocalizationService().changeLocale('Bengali');
                  setState(() {
                    
                  });
                },
                color: Colors.blue[900],
                minWidth: double.infinity,
                child: Text(
                  'Bengali',
                  style: TextStyle(color: Colors.white),
                ),
              ),
           
          ],
        ),
      ),
    );
  }
}
