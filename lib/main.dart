import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Module 1 App',
      home: Scaffold(
        appBar: AppBar(title: Text('Module 1 Home')),
        body: Center(child: Text('Welcome to Module 1!')),
      ),
    );
  }
}
