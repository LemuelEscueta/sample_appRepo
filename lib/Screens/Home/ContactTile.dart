import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sample_app/Model/Contact.dart';
import 'package:sample_app/Model/User.dart';
import 'package:sample_app/Services/Database.dart';

class ContactTile extends StatelessWidget {
  DatabaseService user = DatabaseService(uid: DatabaseService().uid);

  //final Contact contact;
  //ContactTile({required this.contact});
  BuildContext context;
  DocumentSnapshot snapshot;
  ContactTile({required this.context, required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Slidable(
        actionPane: SlidableDrawerActionPane(),
        secondaryActions: <Widget>[
          IconSlideAction(
            caption: 'Edit',
            color: Colors.grey[300],
            icon: Icons.edit,
            closeOnTap: false,
            onTap: (){
            },
          ),
          IconSlideAction(
            caption: 'Delete',
            color: Colors.red[300],
            icon: Icons.delete,
            closeOnTap: true,
            onTap: (){
              user.deleteContact();
            },
          ),
        ],
        child: Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
            ),
            title: Text(snapshot.data['Name']),
            subtitle: Text(snapshot.data['Phone']),
          ),
        ),
      ),
    );
  }
}