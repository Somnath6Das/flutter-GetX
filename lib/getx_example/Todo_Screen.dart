import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodoScreen extends StatefulWidget {
  TodoScreen({Key? key}) : super(key: key);

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<String> items = [];
  TextEditingController itemController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo"),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
              trailing: IconButton(
                  onPressed: () {
                    Get.defaultDialog(
                        title: 'Are you sure?',
                        content: Container(
                          child: Column(children: [
                            Text('you want to delete.'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                MaterialButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text('Cancel'),
                                  color: Colors.blue,
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    items.removeAt(index);
                                    Get.back();
                                    setState(() {});
                                  },
                                  child: Text('Remove'),
                                  color: Colors.blue,
                                )
                              ],
                            )
                          ]),
                        ));
                  },
                  icon: Icon(Icons.delete)),
            );
          }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.list),
          onPressed: () {
            Get.bottomSheet(Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Column(
                children: [
                  TextField(
                    controller: itemController,
                    decoration: InputDecoration(
                      hintText: 'Item Name...',
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (itemController.text.isEmpty) {
                        Get.snackbar('Text is empty', 'Please enter one item',
                            colorText: Colors.blue[400],
                            backgroundColor: Colors.white);
                        return;
                      }
                      items.add(itemController.text);
                      //itemController.clear();
                      Get.back();
                      setState(() {});
                    },
                    child: Text("Add Item"),
                  )
                ],
              ),
            ));
          }),
    );
  }
}
