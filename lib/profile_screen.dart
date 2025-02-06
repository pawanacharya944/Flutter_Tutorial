// import 'package:flutter/material.dart';

// void main() => runApp(EcommerceProfileApp());

// class EcommerceProfileApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       themeMode: ThemeMode.system,
//       home: PP(),
//     );
//   }
// }

// class PP extends StatefulWidget {
//   @override
//   _PPState createState() => _PPState();
// }

// class _PPState extends State<PP> {
//   bool isDarkMode = false;

//   void toggleDarkMode(bool value) {
//     setState(() {
//       isDarkMode = value;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: isDarkMode
//               ? LinearGradient(
//                   colors: [Colors.black, Colors.grey.shade800],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 )
//               : LinearGradient(
//                   colors: [Colors.blue.shade300, Colors.purple.shade300],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//         ),
//         child: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               // Top Section: Dark/Light Mode Toggle and Profile Picture
//               Container(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(30),
//                     bottomRight: Radius.circular(30),
//                   ),
//                   color: isDarkMode ? Colors.black87 : Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black26,
//                       blurRadius: 10,
//                       offset: Offset(0, 5),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   children: [
//                     // Dark Mode Toggle
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Profile",
//                           style: TextStyle(
//                             fontSize: 22,
//                             fontWeight: FontWeight.bold,
//                             color: isDarkMode ? Colors.white : Colors.black,
//                           ),
//                         ),
//                         Switch(
//                           value: isDarkMode,
//                           onChanged: toggleDarkMode,
//                           activeColor: Colors.purple,
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 20),
//                     // Profile Picture
//                     CircleAvatar(
//                       radius: 50,
//                       backgroundImage: AssetImage('assets/profile_pic.jpg'),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       "Alex Johnson",
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: isDarkMode ? Colors.white : Colors.black,
//                       ),
//                     ),
//                     Text(
//                       "alex.johnson@example.com",
//                       style: TextStyle(
//                         fontSize: 14,
//                         color:
//                             isDarkMode ? Colors.white70 : Colors.grey.shade700,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20),
//               // Information Cards
//               Expanded(
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       buildInfoCard(
//                         "Orders",
//                         "15",
//                         Icons.shopping_cart,
//                         isDarkMode,
//                       ),
//                       buildInfoCard(
//                         "Remaining Balance",
//                         "\$120.75",
//                         Icons.account_balance_wallet,
//                         isDarkMode,
//                       ),
//                       SizedBox(height: 30),
//                       // Logout Button
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                         child: ElevatedButton.icon(
//                           onPressed: () {
//                             // Logout logic
//                           },
//                           icon: Icon(Icons.logout),
//                           label: Text("Logout"),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.redAccent,
//                             foregroundColor: Colors.white,
//                             padding: EdgeInsets.symmetric(vertical: 15),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildInfoCard(
//       String title, String value, IconData icon, bool isDarkMode) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//       child: Container(
//         decoration: BoxDecoration(
//           color: isDarkMode ? Colors.black87 : Colors.white,
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 5,
//               offset: Offset(0, 5),
//             ),
//           ],
//         ),
//         child: ListTile(
//           leading: Icon(
//             icon,
//             size: 30,
//             color: Colors.purple,
//           ),
//           title: Text(
//             title,
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//               color: isDarkMode ? Colors.white : Colors.black,
//             ),
//           ),
//           trailing: Text(
//             value,
//             style: TextStyle(
//               fontSize: 18,
//               color: isDarkMode ? Colors.white70 : Colors.grey.shade700,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class PP extends StatefulWidget {
  @override
  _PPState createState() => _PPState();
}

class _PPState extends State<PP> {
  bool isDarkMode = false;

  void toggleDarkMode(bool value) {
    setState(() {
      isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          actions: [
            Row(
              children: [
                Icon(Icons.light_mode,
                    color: isDarkMode ? Colors.grey : Colors.amber),
                Switch(
                  value: isDarkMode,
                  onChanged: toggleDarkMode,
                  activeColor: Colors.blue,
                ),
                Icon(Icons.dark_mode,
                    color: isDarkMode ? Colors.blue : Colors.grey),
              ],
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/dev.jpeg'),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Text(
                  "Pawan Acharya",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),
              buildCard(
                title: "Email",
                value: "pawan15832@gmail.com",
                icon: Icons.email,
              ),
              buildCard(
                title: "Orders",
                value: "15",
                icon: Icons.shopping_cart,
              ),
              buildCard(
                title: "Payment Method",
                value: "3 payment method",
                icon: Icons.account_balance_wallet,
              ),
              Spacer(),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Logout logic
                  },
                  icon: Icon(Icons.logout),
                  label: Text("Logout"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade400,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard({
    required String title,
    required String value,
    required IconData icon,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(
          icon,
          size: 30,
          color: Colors.blue,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          value,
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
