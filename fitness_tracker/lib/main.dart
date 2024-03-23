import 'package:flutter/material.dart';
import 'homepage.dart';
import 'metrics.dart'; // Import the metrics.dart file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) => HomePage(),
        '/metrics': (context) => MetricsPage(), // Add route for MetricsPage
      },
    );
  }
}
