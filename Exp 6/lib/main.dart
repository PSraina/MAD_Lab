import 'package:flutter/material.dart';
import 'Home.dart';
import 'cookie.dart';
import 'cake.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/cookie': (context) => Cookie(),
        '/cake': (context) => Cake(),
      },
    );
  }
}
