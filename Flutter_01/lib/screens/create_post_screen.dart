import 'package:flutter/material.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Create Post")),

      body: Column(
        children: [

          TextField(decoration: InputDecoration(labelText: "Title")),
          TextField(decoration: InputDecoration(labelText: "Description")),

          ElevatedButton(
            onPressed: () {
              // upload logic later
            },
            child: Text("Upload"),
          )
        ],
      ),
    );
  }
}