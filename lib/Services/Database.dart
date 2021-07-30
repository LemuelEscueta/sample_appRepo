import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sample_app/Model/Contact.dart';
import 'package:sample_app/Model/User.dart';

class DatabaseService {

  String? uid;
  DatabaseService({this.uid});

  //collection reference
  final CollectionReference contacts = Firestore.instance.collection('Contacts');

  Future updateUserData(String name, String number, String address) async{
    return await contacts.document(uid).collection(("UserContacts")).add({
      'Name': name,
      'Phone': number,
      'Address': address,
    });
  }

  Future deleteContact() async{
    return await contacts.document(uid).delete().whenComplete(() => null);
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

  // userData from snapshot
  ContactData _userDataFromSnapshot(DocumentSnapshot snapshot){
    return ContactData(
      uid: uid,
      name: snapshot.data['Name'],
      number: snapshot.data['Phone'],
      address: snapshot.data['Address']
    );
  }

  Stream<List<Contact>?> get contact{
    return contacts.snapshots().map(_contactListFromSnapshot);
  }

  Stream<ContactData> get contactData{
    return contacts.document(uid).collection("UserContacts").document(uid).snapshots().map(_userDataFromSnapshot);
  }


}