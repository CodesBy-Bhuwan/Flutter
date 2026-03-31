import 'package:flutter/material.dart';

// Login screen UI only (no real auth)
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Login")),

      body: Padding(
        padding: EdgeInsets.all(16),

        child: Column(
          children: [

            TextField(
              decoration: InputDecoration(labelText: "Email"),
            ),

            TextField(
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                // TODO: Add login logic later
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}