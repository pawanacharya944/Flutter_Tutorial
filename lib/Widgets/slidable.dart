import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class My_Slidable extends StatefulWidget {
  const My_Slidable({super.key});

  @override
  State<My_Slidable> createState() => _My_SlidableState();
}

class _My_SlidableState extends State<My_Slidable> {
  final List<Map<String, String>> contacts = [
    {'name': 'Leonardo DiCaprio', 'phone': '555-0123'},
    {'name': 'Robert Downey Jr', 'phone': '555-0125'},
    {'name': 'Tom Cruise', 'phone': '555-0121'},
    {'name': 'Brad Pitt', 'phone': '555-1123'},
    {'name': 'Johnny Depp', 'phone': '555-2123'},
    {'name': 'Scarlett Johansson', 'phone': '555-4123'},
    {'name': 'Angelina Jolie', 'phone': '555-8123'},
    {'name': 'Tom Hanks', 'phone': '555-4223'},
    {'name': 'Denzel Washington', 'phone': '555-9923'},
    {'name': 'Natalie Portman', 'phone': '555-6123'},
    {'name': 'Meryl Streep', 'phone': '555-8823'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slidable'),
        backgroundColor: Colors.teal[100],
      ),
      body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return Slidable(
              // wrap each contact in a slidable widget

              startActionPane:
                  ActionPane(motion: const DrawerMotion(), children: [
                SlidableAction(
                  onPressed: (context) {
                    // action to call the contact
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.teal[100],
                        content: Text(
                          'Calling ${contacts[index]['name']}',
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    );
                  },
                  backgroundColor: const Color.fromARGB(255, 93, 216, 98),
                  foregroundColor: Colors.white,
                  icon: Icons.call,
                  label: 'Call',
                ),
              ]),

              // end action pane for swipe from right to left

              endActionPane:
                  ActionPane(motion: const ScrollMotion(), children: [
                SlidableAction(
                  onPressed: (context) {
                    // confirm deletion of the contact
                    _confirmDelete(context, index);
                  },
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                )
              ]),
              // wrap each contact in a slidable widget

              child: Card(
                margin: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(18),
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blue[500],
                    size: 40,
                  ),
                  title: Text(
                    contacts[index]['name']!,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    contacts[index]['phone']!,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.chevron_right,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            );
          }),
    );
  }

  void _confirmDelete(BuildContext context, int index) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Delete Contact'),
            content: Text(
                'Are you sure, you want to delete ${contacts[index]['name']}?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // close the dialog
                },
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    contacts
                        .removeAt(index); // remove the contact from the list
                  });

                  Navigator.of(context).pop(); // close the dialog
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.teal[100],
                      content: Text(
                        '${contacts[index]['name']} deleted',
                        style: const TextStyle(color: Colors.black),
                      )));
                },
                child: const Text('Delete'),
              ),
            ],
          );
        });
  }
}
