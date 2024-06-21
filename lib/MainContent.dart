import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Content'),
      ),
      body: Center(
        child: Text('Welcome to the main content screen!'),
      ),
    );
  }
}
