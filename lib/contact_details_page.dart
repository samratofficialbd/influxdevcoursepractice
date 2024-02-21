import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:influxdevcoursepractice/contact_model.dart';

class ContactDetailsPage extends StatelessWidget {
  final ContactModel contact;

  const ContactDetailsPage({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              backgroundColor: Theme.of(context).colorScheme.primary,
              expandedHeight: 350,
              collapsedHeight: Theme.of(context).appBarTheme.toolbarHeight,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  contact.imageUrl ?? '',
                  fit: BoxFit.cover,
                ),
                title: Text(
                  contact.name,
                  style: TextStyle(),
                ),
              ),
            ),
            SliverList.list(
              children: [
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text('Mobile'),
                  subtitle: Text(contact.phoneNumber),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Text(
                    'Others',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Divider(
                    height: 0,
                    color: Colors.grey,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  subtitle: Text(faker.phoneNumber.de()),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email'),
                  subtitle: Text(contact.email),
                ),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text('Office'),
                  subtitle: Text(faker.phoneNumber.de()),
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Address'),
                  subtitle: Text(
                      '${faker.address.streetAddress()}, ${faker.address.city()}, ${faker.address.country()}'),
                ),
                ListTile(
                  title: Text('Likes'),
                  subtitle: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(10, (index) => Container(
                      child: Row(
                        children: [
                          Icon(Icons.food_bank),Text(faker.food.dish())
                        ],
                      ),
                    )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
