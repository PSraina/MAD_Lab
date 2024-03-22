import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Hi! Welcome to Recipes Blog",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Recipes:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cookie');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.brown, // Button color
                onPrimary: Colors.white, // Text color
              ),
              child: Text("Cookies"), // Button text
            ),
            SizedBox(height: 10),
            Text(
              "Cake",
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue, // Text color
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Doughnuts",
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue, // Text color
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
