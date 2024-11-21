import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

const apiKey = String.fromEnvironment('API_KEY');
const secret = String.fromEnvironment('SECRET');

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(width: 300, child: Text('API_KEY= $apiKey')),
              SizedBox(width: 300, child: Text('Secret= $secret')),
            ],
          ),
        ),
      ),
    );
  }
}
