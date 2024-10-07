import 'package:flutter/material.dart';

class My_ToolTip extends StatelessWidget {
  const My_ToolTip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ToolTip",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // making tooltip for the first button
            Tooltip(
              message: 'Click to add an item',
              padding: const EdgeInsets.all(10), // padding around the tooltip
              margin: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 10, // margin around the tooltip
              ),

              decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8.0,
                      offset: Offset(0, 4),
                    )
                  ]),

              textStyle: const TextStyle(
                color: Colors.black, // text color inside the tooltip
                fontWeight: FontWeight.bold,
              ),

              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Add Item",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            const SizedBox(
              height: 80,
            ), // space between buttons

            // tooltip for the second button

            Tooltip(
              message: 'Click to remove an item',
              padding: const EdgeInsets.all(10), // padding around the tooltip
              margin: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 10, // margin around the tooltip
              ),

              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8.0,
                      offset: Offset(0, 4),
                    )
                  ]),
              textStyle: const TextStyle(
                color: Colors.black, // text color inside the tooltip
                fontWeight: FontWeight.bold,
              ),

              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Remove Item",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
