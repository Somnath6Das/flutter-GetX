import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/contact/controller/app_data.dart';
import 'package:learn_getx/contact/model/contact_model.dart';

class AddContact extends StatefulWidget {
  AddContact({Key? key}) : super(key: key);

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  AppData appData = Get.find<AppData>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Contact'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter your name'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your mobile Number'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter your email'),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              onPressed: () {
                ContactModel model = ContactModel(
                    name: nameController.text,
                    email: emailController.text,
                    phone: phoneController.text);

                appData.PlusContact(model);
                Get.back();
              },
              child: Text('Add'),
              color: Colors.green,
              minWidth: 400,
            )
          ],
        ),
      ),
    );
  }
}
