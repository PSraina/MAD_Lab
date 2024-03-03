import 'package:flutter/material.dart';

void main() {
  runApp(FoodRecipeBlog());
}

class FoodRecipeBlog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoodRecipePage(),
    );
  }
}

class FoodRecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Recipe Blog'),
        backgroundColor: Color(0xFFDF91FD), // Purple pastel color
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFEE6C4), // Yellow pastel color
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/food.jpeg',
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Pasta with Tomato Sauce',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xFF86CAFF), // Blue pastel color
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Preparation time: 30 minutes',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Ingredients:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xFF86CAFF), // Blue pastel color
                ),
              ),
              SizedBox(height: 5),
              Text(
                ' - Pasta\n - Tomato sauce\n - Garlic\n - Olive oil\n - Salt\n - Pepper\n - Basil leaves',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Instructions:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xFF86CAFF), // Blue pastel color
                ),
              ),
              SizedBox(height: 5),
              Text(
                '1. Boil the pasta.\n2. Prepare the tomato sauce with garlic, olive oil, salt, and pepper.\n3. Mix the pasta with the tomato sauce.\n4. Garnish with basil leaves and serve.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
