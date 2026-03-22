import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'counter_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Widgets Demo"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [

            // Icon(Icons.flutter_dash, size: 80),

            SizedBox(height: 20),

            Text(
              "Flutter UI Components",
              style: TextStyle(fontSize: 24),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              child: Text("Profile UI Example"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                );
              },
            ),

            ElevatedButton(
              child: Text("Counter Example"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CounterScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}