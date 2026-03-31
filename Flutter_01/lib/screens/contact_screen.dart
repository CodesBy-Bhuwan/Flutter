import 'package:flutter/material.dart';
import '../widgets/custom_buttom_nav.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact")),
      body: Center(child: Text("Contact Page")),

      bottomNavigationBar: BottomNav(currentIndex: 1),
    );
    
  }
}