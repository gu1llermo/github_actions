import 'dart:ui' as ui;

import 'package:flutter/material.dart';
// import 'dart:html';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  String getSupabaseAnonKey() {
    try {
      final env = (ui.PlatformDispatcher.instance.views.first as dynamic).env;
      return env['API_KEY'] ?? '';
    } catch (e) {
      print(e);
      return 'Ocurrió un error';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('API_KEY= ${getSupabaseAnonKey()}'),
        ),
      ),
    );
  }
}
