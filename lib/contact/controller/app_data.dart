import 'package:get/get.dart';
import 'package:learn_getx/contact/add_contact.dart';
import 'package:learn_getx/contact/model/contact_model.dart';

class AppData extends GetxController {
  var contacts = [].obs;

  PlusContact(ContactModel contact) {
    contacts.add(contact);
  }

  DeleteContact(ContactModel contact) {
    contacts.remove(contact);
  }
}
