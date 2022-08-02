import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/contact/add_contact.dart';
import 'package:learn_getx/contact/model/contact_model.dart';

import 'controller/app_data.dart';

class ContractBook extends StatelessWidget {
  ContractBook({Key? key}) : super(key: key);

  AppData appData = Get.put(AppData(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Obx(() => ListView.builder(
                    itemCount: appData.contacts.value.length,
                    itemBuilder: (context, index) {
                      ContactModel model = appData.contacts.value[index];
                      return Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: ListTile(
                          leading: CircleAvatar(child: Icon(Icons.person)),
                          title: Text(model.name),
                          subtitle: Text(model.phone),
                          trailing: IconButton(
                              onPressed: () {
                                appData.DeleteContact(model);
                              },
                              icon: Icon(Icons.delete_forever, color: Colors.red,)),
                        ),
                      );
                    },
                  ))),
          MaterialButton(
            onPressed: () {
              Get.to(() => AddContact());
            },
            child: Text(
              'Add Contract',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.green,
            minWidth: 300,
          )
        ],
      ),
    );
  }
}
