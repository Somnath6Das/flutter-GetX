import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharepref_getx extends StatefulWidget {
  const Sharepref_getx({Key? key}) : super(key: key);

  @override
  State<Sharepref_getx> createState() => _Sharepref_getxState();
}

class _Sharepref_getxState extends State<Sharepref_getx> {
  int count = 0;

  late SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
    initCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Storeing Data using Shared Preferences',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 20),
            Text(
              'Count = $count',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            MaterialButton(
              color: Colors.green.shade50,
              onPressed: () {
                Count();

              },
       
              child: Icon(Icons.plus_one),
            ),
            MaterialButton(
              color: Colors.amber.shade50,
              onPressed: () {
                DeCount();
              },
           
              child: Icon(Icons.exposure_minus_1_outlined),
            ),
          ],
        ),
      ),
    );
  }

  void Count() {
    setState(() {
      count++;
    });

    sharedPreferences.setInt('count', count);
  }
  void DeCount() {
    setState(() {
      count--;
    });

    sharedPreferences.setInt('count', count);
  }

  void initCounter() async {
    sharedPreferences = await SharedPreferences.getInstance();
    try {
      count = sharedPreferences.getInt('count')!;
    } catch (e) {
      count = 0;
    }
    setState(() {
      
    });
  }
}
