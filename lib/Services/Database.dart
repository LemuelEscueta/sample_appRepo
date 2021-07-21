import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sample_app/Model/Contact.dart';

class DatabaseService {

  String? uid;
  DatabaseService({this.uid});

  //collection reference
  final CollectionReference contacts = Firestore.instance.collection('Contacts');

  Future updateUserData(String name, String number, String address) async{
    return await contacts.document(uid).setData({
      'Name': name,
      'Phone': number,
      'Address': address,
    });
  }

  List<Contact>? _contactListFromSnapshot(QuerySnapshot snapshot) {

    return snapshot.documents.map((doc) {
      return Contact(
          name: doc.data['Name'] ?? '',
          number: doc.data['Phone'] ?? '0',
          address: doc.data['Address'] ?? '',
      );
    }).toList();
  }

  Stream<List<Contact>?> get contact{
    return contacts.snapshots().map(_contactListFromSnapshot);
  }
}