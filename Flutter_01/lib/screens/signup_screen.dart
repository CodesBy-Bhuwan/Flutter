import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup")),

      body: Column(
        children: [
          TextField(decoration: InputDecoration(labelText: "Name")),
          TextField(decoration: InputDecoration(labelText: "Email")),
          TextField(decoration: InputDecoration(labelText: "Password")),
          ElevatedButton(
            onPressed: () {},
            child: Text("Create Account"),
          )
        ],
      ),
    );
  }
}