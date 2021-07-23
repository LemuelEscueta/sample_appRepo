
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/Model/Contact.dart';
import 'package:sample_app/Model/User.dart';
import 'package:sample_app/Services/Database.dart';

import 'ContactTile.dart';

class ContactList extends StatefulWidget {

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {

  @override
  Widget build(BuildContext context) {

    final CollectionReference contactCollection = Firestore.instance.collection('Contacts');
    final contacts = Provider.of<List<Contact>?>(context);
    final user = Provider.of<TheUser>(context);

    return StreamBuilder<ContactData>(
      stream: DatabaseService(uid: user.uid).userData,
      builder: (context, snapshot) {
        if(snapshot.hasData){
          ContactData? userData = snapshot.data;

          if(userData?.uid == contactCollection.document().documentID){
            print('Hello');
          }
        }
        return ListView.builder(
          itemCount: contacts!.length,
          itemBuilder: (context, index) {
            return ContactTile(contact: contacts[index]);
          },
        );
      }
    );
  }
}

