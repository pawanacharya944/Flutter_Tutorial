import 'package:flutter/material.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text(
          'B o t t o m   S h e e t',
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.blue[100],
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green.shade400,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () => showCustomBottomSheet(context),
            child: const Text(
              'Show Bottom Sheet',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
              color: Colors.black26, blurRadius: 10, offset: Offset(0, -2)),
        ],
      ),
      padding: const EdgeInsets.all(16),
      height: MediaQuery.of(context).size.height * 0.50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(5),
            ),
            margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: MediaQuery.of(context).size.width * 0.5 - 20),
          ),
          const Text(
            'Select an Option',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 20),
          Expanded(
              child: ListView(
            children: [
              _buildListTile(Icons.camera, 'Camera', Colors.orange, context),
              _buildListTile(Icons.photo, 'Gallery', Colors.green, context),
              _buildListTile(Icons.share, 'Share', Colors.purple, context),
              _buildListTile(Icons.close, 'Cancel', Colors.red, context),
            ],
          ))
        ],
      ),
    );
  }

  Widget _buildListTile(
      IconData icon, String title, Color color, BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: color, size: 32),
      title: Text(title, style: const TextStyle(fontSize: 18)),
      onTap: () {
        // using Future.delayed to ensure proper timing for pop

        Future.delayed(Duration.zero, () {
          Navigator.pop(context); // close the bottom sheet
        });
      },
    );
  }
}

void showCustomBottomSheet(BuildContext context) {
  showModalBottomSheet(
      // barrierColor: Colors.green[100],
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => const CustomBottomSheet());
}
