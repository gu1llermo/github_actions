import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

const apiKey = String.fromEnvironment('API_KEY');
// probé en github pages y me parece que colocó un string vacío
// y en el emulador de android también, así que por lo que veo
// que si no lo consigue regresa un string vacío, pero no genera error

const secret = String.fromEnvironment('SECRET');

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
