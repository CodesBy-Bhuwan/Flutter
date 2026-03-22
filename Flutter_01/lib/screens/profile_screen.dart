import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Card")),

      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          width: 300,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              CircleAvatar(
                radius: 40,
                backgroundImage:
                    NetworkImage("https://i.pravatar.cc/140"),
              ),

              SizedBox(height: 10),

              Text(
                "John Doe",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text("Flutter Developer"),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.email),
                  Icon(Icons.phone),
                  Icon(Icons.share),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}