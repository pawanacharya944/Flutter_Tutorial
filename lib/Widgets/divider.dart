import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'D i v i d e r',
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.teal.shade100,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title

            Text(
              'D a i l y  A c t i v i t i e s',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),

            SizedBox(height: 20),

            // morning section

            Text(
              'M o r n i n g',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.deepOrange,
              ),
            ),

            ListTile(
              leading: Icon(
                Icons.wb_sunny,
                color: Colors.deepOrange,
                size: 28,
              ),
              title: Text(
                'Morning Walk',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text('30-minute peaceful walk.'),
            ),

            Divider(
              color: Colors.deepOrange,
              thickness: 2,
              indent: 40,
              endIndent: 40,
            ),

            // Afternoon section

            Text(
              'A f t e r n o o n',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.brown,
              ),
            ),

            ListTile(
              leading: Icon(
                Icons.book,
                color: Colors.brown,
                size: 28,
              ),
              title: Text(
                'Learning Flutter',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text('Studied Flutter for 2 hours.'),
            ),

            Divider(
              color: Colors.brown,
              thickness: 2,
              indent: 40,
              endIndent: 40,
            ),

            // Evening section

            Text(
              'E v e n i n g',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.indigo,
              ),
            ),

            ListTile(
              leading: Icon(
                Icons.movie,
                color: Colors.indigo,
                size: 28,
              ),
              title: Text(
                'Movie Night',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text('Watched a sci-fi movie.'),
            ),

            Divider(
              color: Colors.indigoAccent,
              thickness: 2,
              indent: 40,
              endIndent: 40,
            ),
          ],
        ),
      ),
    );
  }
}
