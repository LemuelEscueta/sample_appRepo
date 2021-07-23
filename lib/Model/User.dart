import 'package:sample_app/Model/Contact.dart';

class TheUser {
  final String uid;

  late List<Contact> contacts;
  TheUser({ required this.uid, required});
}

class ContactData {

  final String? uid;
  final String name;
  final String number;
  final String address;

  ContactData({required this.uid, required this.name, required this.number, required this.address});
}