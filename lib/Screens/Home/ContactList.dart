
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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


    Stream <QuerySnapshot> getUserContactsSnapshots(BuildContext context) async* {
      final uid = await Provider.of(context).auth.getCurrentUID();
      yield* Firestore.instance.collection("Contacts").document(uid).collection("UserContacts").snapshots();
    }

    final CollectionReference contactCollection = Firestore.instance.collection('Contacts');
    final contacts = Provider.of<List<Contact>?>(context);

    return StreamBuilder (
      stream: getUserContactsSnapshots(context),
      builder: (context, AsyncSnapshot snapshot) {
        if(!snapshot.hasData) return Text('Loading...');
        return ListView.builder(
          itemCount: snapshot.data.documents.length,
          itemBuilder: (BuildContext context, int index) => ContactTile(context: context, snapshot: snapshot.data.documents[index]),
        );
      }
    );
  }
}

