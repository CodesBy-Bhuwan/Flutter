import 'package:flutter/material.dart';
import '../widgets/custom_buttom_nav.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black, // dark theme like Instagram

      // 🔝 Top App Bar
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,

        title: Row(
          children: [
            Icon(Icons.lock, size: 16), // private icon
            SizedBox(width: 5),
            Text("username"), // 🔁 replace with dynamic username
            Icon(Icons.keyboard_arrow_down),
          ],
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.menu), // ☰ category/menu
            onPressed: () {
              // open menu later
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // 👤 Profile Section (Image + Stats)
              Row(
                children: [

                  // Profile Picture
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.person, size: 40),
                      ),

                      // ➕ small add icon
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.add, size: 16, color: Colors.white),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(width: 20),

                  // Stats (Posts, Followers, Following)
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildStat("0", "posts"),
                        _buildStat("0", "followers"),
                        _buildStat("141", "following"),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              // 👤 Name
              Text(
                "Your Name",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 5),

              // 🆔 Username
              Text(
                "@username",
                style: TextStyle(color: Colors.grey),
              ),

              SizedBox(height: 15),

              // ✏️ Buttons (Edit / Share)
              Row(
                children: [

                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[900],
                      ),
                      onPressed: () {},
                      child: Text("Edit profile"),
                    ),
                  ),

                  SizedBox(width: 10),

                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[900],
                      ),
                      onPressed: () {},
                      child: Text("Share profile"),
                    ),
                  ),

                  SizedBox(width: 10),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.person_add),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // 📊 Tabs (Grid / Tagged)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.grid_on, color: Colors.white),
                  Icon(Icons.person_pin_outlined, color: Colors.grey),
                ],
              ),

              Divider(color: Colors.grey),

              SizedBox(height: 20),

              // 📭 Empty State
              Center(
                child: Column(
                  children: [
                    Text(
                      "Capture the moment with a friend",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Create your first post",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              // 🧩 Profile Completion Section
              Text(
                "Complete your profile",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),

              SizedBox(height: 5),

              Text(
                "2 OF 4 COMPLETE",
                style: TextStyle(color: Colors.grey),
              ),

              SizedBox(height: 15),

              Row(
                children: [

                  // Add Picture Card
                  Expanded(
                    child: _buildCard(
                      icon: Icons.person,
                      title: "Add profile picture",
                      buttonText: "Add picture",
                    ),
                  ),

                  SizedBox(width: 10),

                  // Add Bio Card
                  Expanded(
                    child: _buildCard(
                      icon: Icons.chat_bubble_outline,
                      title: "Add bio",
                      buttonText: "Add Bio",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // 🔻 Bottom Nav
      bottomNavigationBar: BottomNav(currentIndex: 2),
    );
  }

  // 🔹 Stat Widget
  Widget _buildStat(String number, String label) {
    return Column(
      children: [
        Text(number, style: TextStyle(color: Colors.white, fontSize: 18)),
        Text(label, style: TextStyle(color: Colors.grey)),
      ],
    );
  }

  // 🔹 Card Widget
  Widget _buildCard({
    required IconData icon,
    required String title,
    required String buttonText,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.grey, size: 40),
          SizedBox(height: 10),
          Text(title, style: TextStyle(color: Colors.white)),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: Text(buttonText),
          )
        ],
      ),
    );
  }
}