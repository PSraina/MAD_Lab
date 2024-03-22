import 'package:flutter/material.dart';

class Cake extends StatefulWidget {
  const Cake({Key? key}) : super(key: key);

  @override
  State<Cake> createState() => _CakeState();
}

class _CakeState extends State<Cake> {
  @override
  Widget build(BuildContext context) {
    //cake recipe details
    var cakeName = "Chocolate Cake";
    var cakeIngredients = [
      "Flour",
      "Sugar",
      "Cocoa powder",
      "Baking powder",
      "Salt",
      "Eggs",
      "Milk",
      "Vegetable oil",
      "Vanilla extract",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Chocolate Cake Recipe"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Today's Recipe",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20),
            Text(
              cakeName,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Ingredients:",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: cakeIngredients
                  .map(
                    (ingredient) => Text(
                      "• $ingredient",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
