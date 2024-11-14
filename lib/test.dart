

// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// class MyCurvedNavBar extends StatefulWidget {
//   @override
//   _MyCurvedNavBarState createState() => _MyCurvedNavBarState();
// }

// class _MyCurvedNavBarState extends State<MyCurvedNavBar> {
//   int _currentIndex = 0;

//   final List<Widget> _screens = [
//     DashboardScreen(),
//     SearchScreen(),
//     NotificationScreen(),
//     ProfileScreen(),
//   ];

//   final List<String> _titles = [
//     'Dashboard',
//     'Search',
//     'Notifications',
//     'Profile',
//   ];

//   // Background colors for each screen
//   final List<Color> _containerColors = [
//     Colors.blue.shade100,
//     Colors.green.shade100,
//     Colors.red.shade100,
//     Colors.purple.shade100,
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: Text(
//           _titles[_currentIndex],
//           style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.transparent,
//         centerTitle: true,
//       ),
//       body: _screens[_currentIndex],
//       bottomNavigationBar: CurvedNavigationBar(
//         items: <Widget>[
//           Icon(Icons.dashboard, size: 30, color: Colors.white),
//           Icon(Icons.search, size: 30, color: Colors.white),
//           Icon(Icons.notifications, size: 30, color: Colors.white),
//           Icon(Icons.person, size: 30, color: Colors.white),
//         ],
//         color: Colors.teal[400]!, // The base color of the whole navigation bar.
//         buttonBackgroundColor: Colors.blueGrey, // Keep button background white.
//         backgroundColor: _containerColors[
//             _currentIndex], // Match curve part to container color.
//         animationCurve: Curves.easeInOut,
//         animationDuration: Duration(milliseconds: 300),
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }

// // Screen Widgets
// class DashboardScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue.shade100,
//       child: Center(
//         child: Card(
//           elevation: 4,
//           margin: EdgeInsets.all(20),
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Icon(Icons.dashboard, size: 60, color: Colors.blue),
//                 SizedBox(height: 20),
//                 Text(
//                   'Welcome to the Dashboard!',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'Here you can find an overview of your activities.',
//                   style: TextStyle(fontSize: 16),
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SearchScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.green.shade100,
//       child: Center(
//         child: Card(
//           elevation: 4,
//           margin: EdgeInsets.all(20),
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Icon(Icons.search, size: 60, color: Colors.green),
//                 SizedBox(height: 20),
//                 Text(
//                   'Search for something...',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'Use the search bar below to find what you need.',
//                   style: TextStyle(fontSize: 16),
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class NotificationScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red.shade100,
//       child: Center(
//         child: Card(
//           elevation: 4,
//           margin: EdgeInsets.all(20),
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Icon(Icons.notifications, size: 60, color: Colors.red),
//                 SizedBox(height: 20),
//                 Text(
//                   'Notifications',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'Check your latest updates and alerts here.',
//                   style: TextStyle(fontSize: 16),
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.purple.shade100,
//       child: Center(
//         child: Card(
//           elevation: 4,
//           margin: EdgeInsets.all(20),
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Icon(Icons.person, size: 60, color: Colors.purple),
//                 SizedBox(height: 20),
//                 Text(
//                   'Your Profile',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'Manage your personal information and settings.',
//                   style: TextStyle(fontSize: 16),
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
