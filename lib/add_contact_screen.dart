import 'package:flutter/material.dart';
import 'package:jkb_training_march/contact.dart';

import 'main.dart';

class AddContactScreen extends StatefulWidget {
  const AddContactScreen({
    super.key,
    this.contact,
  });

  final Contact? contact;

  @override
  State<AddContactScreen> createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
  late final TextEditingController nameController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.contact?.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.contact != null ? 'Update Contact' : 'Add Contact'),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(hintText: 'Enter name'),
                  validator: (value) {
                    if (value == null) return 'Enter something';
                    if (value.isEmpty) return 'Enter something';
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                FilledButton(
                  onPressed: () {
                    final isValid = formKey.currentState?.validate() ?? false;
                    if (isValid) {
                      final contact = Contact(
                        name: nameController.text,
                      );
                      Navigator.of(context).pop(contact);
                    }
                  },
                  child: Text(widget.contact != null ? 'Update' : 'Save'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
  }
}
