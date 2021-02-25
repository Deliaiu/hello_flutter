import 'package:flutter/material.dart';

class HelloDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Hello World',
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.brown),
        ),
      ),
    );
  }
}
