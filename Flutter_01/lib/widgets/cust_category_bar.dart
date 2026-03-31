import 'package:flutter/material.dart';

// Category dropdown menu (top-right)
class CategoryMenu extends StatelessWidget {
  final bool isLoggedIn;

  CategoryMenu({required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Icon(Icons.more_vert),

      onSelected: (value) {
        if (value == 'home') {
          Navigator.pushReplacementNamed(context, '/');
        } else if (value == 'contact') {
          Navigator.pushReplacementNamed(context, '/contact');
        } else if (value == 'profile') {
          Navigator.pushReplacementNamed(context, '/profile');
        } else if (value == 'login') {
          Navigator.pushNamed(context, '/login');
        } else if (value == 'signup') {
          Navigator.pushNamed(context, '/signup');
        } else if (value == 'settings') {
          // Future feature
        }
      },

      itemBuilder: (context) => [
        PopupMenuItem(value: 'home', child: Text("Home")),
        PopupMenuItem(value: 'contact', child: Text("Contact")),
        PopupMenuItem(value: 'profile', child: Text("Profile")),
        PopupMenuItem(value: 'login', child: Text("Login")),
        PopupMenuItem(value: 'signup', child: Text("Signup")),
        PopupMenuItem(value: 'settings', child: Text("Settings")),
      ],
    );
  }
}