import 'package:flutter/material.dart';

class PostDetailScreen extends StatefulWidget {
  @override
  _PostDetailScreenState createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {

  // Controller for text input
  TextEditingController commentController = TextEditingController();

  // List to store comments
  List<String> comments = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Post Detail")),

      body: Column(
        children: [

          // 🖼️ Image
          Container(
            height: 200,
            color: Colors.grey,
            child: Center(child: Text("Image")),
          ),

          // 📝 Title
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "Product Title",
              style: TextStyle(fontSize: 20),
            ),
          ),

          // 📄 Description
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Full description of product"),
          ),

          Divider(),

          // 💬 Comment Input
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [

                // Input field
                Expanded(
                  child: TextField(
                    controller: commentController,
                    decoration: InputDecoration(
                      hintText: "Write a comment...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                SizedBox(width: 8),

                // Comment Button
                ElevatedButton(
                  onPressed: () {

                    // Add comment to list
                    if (commentController.text.isNotEmpty) {
                      setState(() {
                        comments.add(commentController.text);
                        commentController.clear(); // clear input
                      });
                    }
                  },
                  child: Text("Post"),
                ),
              ],
            ),
          ),

          Divider(),

          // 📜 Comment List
          Expanded(
            child: ListView.builder(
              itemCount: comments.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.comment),
                  title: Text(comments[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}