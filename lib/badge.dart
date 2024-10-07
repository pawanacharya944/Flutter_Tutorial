import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class My_Badges extends StatefulWidget {
  const My_Badges({super.key});

  @override
  State<My_Badges> createState() => _My_BadgesState();
}

class _My_BadgesState extends State<My_Badges> {
  int _cartItemCount = 5; // initial cart item count
  int _notificationCount = 8; // initial notification count
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Badges'),
        actions: [
          // badge on shopping cart icon

          badges.Badge(
            badgeContent: Text(
              ' $_cartItemCount', // this displays the item count
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            badgeStyle: badges.BadgeStyle(
              badgeColor: Colors.red, // badge background color
              padding: const EdgeInsets.symmetric(
                  horizontal: 10, vertical: 5), // padding inside the badge
              borderRadius: BorderRadius.circular(
                  12), // rounded corners for a softer look
            ),
            position: badges.BadgePosition.topEnd(
              top: -8, end: -8, // position of the badge
            ),
            child: IconButton(
              onPressed: () {
                setState(() {
                  _cartItemCount++; // increment item count for demo purpose
                });
              },
              icon: const Icon(
                Icons.shopping_cart,
                size: 30,
              ),
            ),
          ),

          const SizedBox(
            width: 20, // space between icons
          ),

          // badge on notification icon

          badges.Badge(
            badgeContent: Text(
              '$_notificationCount', // display notification count
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
            badgeStyle: badges.BadgeStyle(
              badgeColor: Colors.green, // green badge for notifications
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            position: badges.BadgePosition.topStart(
              top: -8,
              start: -8,
            ),
            child: IconButton(
              onPressed: () {
                setState(() {
                  _notificationCount++; // increment notification count for demo purpose
                });

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('You have new notification!'),
                  ),
                );
              },
              icon: const Icon(
                Icons.notifications,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Press the Icons to see badge interaction!',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 20, // space between text and buttons
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  _cartItemCount = _cartItemCount > 0
                      ? _cartItemCount - 1
                      : 0; // decrement cart count with a limit of zero
                });
              },
              icon: const Icon(Icons.remove_shopping_cart),
              label: const Text('Remove Item From Cart'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.blueAccent,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
