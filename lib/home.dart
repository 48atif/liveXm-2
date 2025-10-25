import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact List',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Name TextField
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Hasan',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            // Phone TextField
            TextFormField(
              decoration: const InputDecoration(
                hintText: '01745-777777',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),

            // Add Button
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Text('Add'),
              ),
            ),
            const SizedBox(height: 20),

            // Contact List
            Expanded(
              child: ListView(
                children: const [
                  ContactCard(
                      name: 'Jawad', number: '01877-777777', iconColor: Colors.blue),
                  ContactCard(
                      name: 'Ferdous', number: '01673-777777', iconColor: Colors.blue),
                  ContactCard(
                      name: 'Hasan', number: '01745-777777', iconColor: Colors.blue),
                  ContactCard(
                      name: 'Hasan', number: '01745-777777', iconColor: Colors.blue),
                  ContactCard(
                      name: 'Hasan', number: '01745-777777', iconColor: Colors.blue),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String name;
  final String number;
  final Color iconColor;

  const ContactCard({
    super.key,
    required this.name,
    required this.number,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.brown,
          child: Icon(Icons.person, color: Colors.white),
        ),
        title: Text(
          name,
          style: const TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(number),
        trailing: Icon(Icons.call, color: iconColor),
      ),
    );
  }
}
