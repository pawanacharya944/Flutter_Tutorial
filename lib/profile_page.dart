import 'package:flutter/material.dart';

class EcommerceProfilePage extends StatefulWidget {
  @override
  _EcommerceProfilePageState createState() => _EcommerceProfilePageState();
}

class _EcommerceProfilePageState extends State<EcommerceProfilePage> {
  bool isDarkMode = false;

  void toggleDarkMode(bool value) {
    setState(() {
      isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        actions: [
          Switch(
            value: isDarkMode,
            onChanged: (value) => toggleDarkMode(value),
            activeColor: Colors.purple,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: isDarkMode
              ? LinearGradient(
                  colors: [Colors.black87, Colors.black54],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : LinearGradient(
                  colors: [Colors.blue.shade300, Colors.purple.shade300],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 20),
                // Profile Picture
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/dev.jpeg'),
                ),
                SizedBox(height: 20),
                // Name and Email in a Card
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        profileDetail("Name", "Alex Johnson", Icons.person),
                        Divider(),
                        profileDetail(
                            "Email", "alex.johnson@example.com", Icons.email),
                        Divider(),
                        profileDetail("Orders", "15", Icons.shopping_cart),
                        Divider(),
                        profileDetail("Balance", "\$120.75",
                            Icons.account_balance_wallet),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                // Logout Button
                ElevatedButton.icon(
                  onPressed: () {
                    // Add logout logic here
                  },
                  icon: Icon(Icons.logout),
                  label: Text("Logout"),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    backgroundColor: Colors.redAccent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget profileDetail(String title, String value, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: Colors.purple),
        SizedBox(width: 10),
        Text(
          "$title:",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Spacer(),
        Text(
          value,
          style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
      ],
    );
  }
}
