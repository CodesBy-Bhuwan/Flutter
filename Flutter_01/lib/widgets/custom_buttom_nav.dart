import 'package:flutter/material.dart';

// Custom Bottom Navigation with active highlight
class BottomNav extends StatelessWidget {
  final int currentIndex; // current selected tab

  BottomNav({required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex, // highlight active tab
      onTap: (index) {
        // Navigate based on index
        if (index == 0) {
          Navigator.pushReplacementNamed(context, '/');
        } else if (index == 1) {
          Navigator.pushReplacementNamed(context, '/contact');
        } else if (index == 2) {
          Navigator.pushReplacementNamed(context, '/profile');
        }
      },

      items: [
        BottomNavigationBarItem(
          label: "",
          icon: _buildIcon(Icons.home, 0),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: _buildIcon(Icons.contact_page, 1),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: _buildIcon(Icons.person, 2),
        ),
      ],
    );
  }

  // Custom circular icon
  Widget _buildIcon(IconData icon, int index) {
    bool isSelected = currentIndex == index;

    return Container(
      padding: EdgeInsets.all(10),

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.blue : Colors.transparent,
      ),

      child: Icon(
        icon,
        color: isSelected ? Colors.white : Colors.grey,
      ),
    );
  }
}