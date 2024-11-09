import 'package:flutter/material.dart';

class MyHero extends StatelessWidget {
  const MyHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Main Screen',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.blue[200],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[200]!, Colors.green[200]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {
              // navigate to detail screen on tap
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const DetailScreen()));
            },
            child: Hero(
                tag: 'HeroImage',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'images/coffee.jpg',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                )),
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Screen',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.blue[200],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[200]!, Colors.green[300]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                // navigate back to main screen
                Navigator.pop(context);
              },
              child: Center(
                child: Hero(
                    tag: 'HeroImage',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'images/cofffee.jpg',
                        width: 400,
                        height: 400,
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
