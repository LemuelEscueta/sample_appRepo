
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/Model/Contact.dart';

import 'ContactTile.dart';

class BrewList extends StatefulWidget {

  @override
  _BrewListState createState() => _BrewListState();
}

class _BrewListState extends State<BrewList> {
  @override
  Widget build(BuildContext context) {

    final contacts = Provider.of<List<Contact>?>(context);
    contacts!.forEach((contact) {
      print(contact.name);
      print(contact.number);
      print(contact.address);
    });
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        return ContactTile(contact: contacts[index]);
      },
    );
  }
}

