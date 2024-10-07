import 'package:flutter/material.dart';

class My_ListView extends StatelessWidget {
  const My_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
        backgroundColor: Colors.green[200],
      ),
      body: ListView.separated(
        itemCount: 30, // total number of items in the list
        separatorBuilder: (context, index) => Divider(
          height: 1,
          color: Colors.grey[300], // color of the divider
        ),
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(
                vertical: 5, horizontal: 10), // space around each card
            elevation: 2, // shadow effect for the card
            child: ListTile(
              contentPadding: const EdgeInsets.all(
                  15), // padding inside the listtile for better spacing
              leading: CircleAvatar(
                backgroundColor:
                    Colors.green[300], // background color of the circle avatar
                child: Text(
                  '${index + 1}', // displaying the item number inside the circle
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),

              title: Text(
                'Item ${index + 1}',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              subtitle: Text(
                "Tap for more info about item ${index + 1}",
              ),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.green[300],
              ),
              onTap: () {
                // action to perform when an item is tapped
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.green[100],
                    content: Text(
                      "You Tapped on item ${index + 1}",
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
