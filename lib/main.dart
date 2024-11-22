import 'package:flutter/material.dart';

import 'config/constants/environment_config.dart';

Future<void> main() async {
  await EnvironmentConfig.initialize();
  runApp(const MainApp());
}

// const _apikey = String.fromEnvironment('API_KEY');
// probé en github pages y me parece que colocó un string vacío
// y en el emulador de android también, así que por lo que veo
// que si no lo consigue regresa un string vacío, pero no genera error

// const _secret = String.fromEnvironment('SECRET');

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final apikey = EnvironmentConfig.apiKey;
    final secret = EnvironmentConfig.secret;
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 300, child: Text('API_KEY= $apikey')),
              SizedBox(width: 300, child: Text('Secret= $secret')),
            ],
          ),
        ),
      ),
    );
  }
}
