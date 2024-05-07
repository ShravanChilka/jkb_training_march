import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:jkb_training_march/add_contact_screen.dart';
import 'package:jkb_training_march/show_snackbar.dart';

import 'contact.dart';
import 'main.dart';

class MyContactScreen extends StatefulWidget {
  const MyContactScreen({super.key});

  @override
  State<MyContactScreen> createState() => _MyContactScreenState();
}

class _MyContactScreenState extends State<MyContactScreen> {
  List<Contact> contacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Contacts'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          log('before result');
          final result = await Navigator.of(context).push<Contact>(
            MaterialPageRoute(
              builder: (context) => const AddContactScreen(),
            ),
          );
          log('$result');
          if (result != null) {
            setState(() {
              contacts.add(result);
            });
            showSnackBar('Contact added!');
          }
          log('after result');
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () async {
              final result = await Navigator.of(context).push<Contact>(
                MaterialPageRoute(
                  builder: (context) => AddContactScreen(
                    contact: contacts[index],
                  ),
                ),
              );
              if (result != null) {
                setState(() {
                  contacts[index] = result;
                });
                showSnackBar('Contact updated!');
              }
            },
            leading: const CircleAvatar(
              child: Icon(Icons.person),
            ),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  contacts.removeAt(index);
                });
                showSnackBar('Contact deleted!');
              },
              icon: const Icon(Icons.delete),
            ),
            title: Text(contacts[index].name),
          );
        },
      ),
    );
  }
}
