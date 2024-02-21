import 'package:flutter/material.dart';
import 'package:influxdevcoursepractice/contact_details_page.dart';
import 'package:influxdevcoursepractice/utils.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacts'),),
      body: ListView.builder(itemBuilder: (context, index) {
        final item = contactList[index];
        return ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => ContactDetailsPage(contact: item),));
          },
          leading: CircleAvatar(child: Text(item.name.characters.first),),
          title: Text(item.name),
          subtitle: Text(item.email),
        );
      },
        itemCount: contactList.length,
      ),
    );
  }
}
