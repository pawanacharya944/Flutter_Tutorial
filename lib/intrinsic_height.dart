import 'package:flutter/material.dart';

class MyIntrinsicHeight extends StatelessWidget {
  const MyIntrinsicHeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'I n t r i n s i c H e i g h t',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.teal.shade200,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                      child: const Center(
                        child: Text(
                          'Subscribe',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    )),

                // vertical divider for separation

                const VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                  width: 20,
                ),

                // elevated button

                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal.shade300),
                      child: const Text(
                        'Code Flicks',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                ),

                // vertical divider

                const VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                  width: 20,
                ),

                // icon with text

                const Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.thumb_up,
                        color: Colors.blue,
                        size: 32,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Thumbs up',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
