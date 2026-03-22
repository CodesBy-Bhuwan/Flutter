import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String role;
  final String imageUrl;

  const ProfileCard({
    super.key,
    required this.name,
    required this.role,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            backgroundImage: NetworkImage(imageUrl),
          ),

          SizedBox(height: 10),

          Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(role),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.email),
              Icon(Icons.phone),
              Icon(Icons.share),
            ],
          )
        ],
      ),
    );
  }
}