import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

const apiKey = String.fromEnvironment('API_KEY');

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('API_KEY= $apiKey'),
        ),
      ),
    );
  }
}
