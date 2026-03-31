import 'package:flutter/material.dart';

// Widget representing a single post in feed
class PostCard extends StatelessWidget {
  final VoidCallback onTap;

  const PostCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // open detail page

      child: Card(
        margin: EdgeInsets.all(10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Fake image
            Container(
              height: 200,
              color: Colors.grey,
              child: Center(child: Text("Image")),
            ),

            // Post title
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Product Title",
                style: TextStyle(fontSize: 18),
              ),
            ),

            // Description
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Short description of product"),
            ),
          ],
        ),
      ),
    );
  }
}