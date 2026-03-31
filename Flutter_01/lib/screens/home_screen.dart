import 'package:flutter/material.dart';

// Import widgets
import '../widgets/cust_category_bar.dart';
import '../widgets/custom_buttom_nav.dart';
import '../widgets/post_template.dart';

// Home screen (visible even without login)
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // Fake login state (for now)
  bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // ✅ AppBar with Category Menu on TOP RIGHT
      appBar: AppBar(
        title: Text("Home Feed"),

        // Actions = right side of AppBar
        actions: [
          CategoryMenu(isLoggedIn: isLoggedIn), // menu button
        ],
      ),

      // ✅ Body: List of posts (visible without login)
      body: ListView.builder(
        itemCount: 10, // dummy posts count

        itemBuilder: (context, index) {
          return PostCard(
            onTap: () {
              // Navigate to post detail screen
              Navigator.pushNamed(context, '/postDetail');
            },
          );
        },
      ),

      // ✅ Bottom Navigation with selected index = 0 (HOME)
      bottomNavigationBar: BottomNav(currentIndex: 0),
    );
  }
}