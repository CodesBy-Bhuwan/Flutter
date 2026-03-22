import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Counter Example")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Count: $count",
              style: TextStyle(fontSize: 28),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: increment,
              child: Text("Increase"),
            )
          ],
        ),
      ),
    );
  }
}