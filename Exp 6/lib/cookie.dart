import 'package:flutter/material.dart';
//import 'package:http/http.dart';
import 'dart:convert' as convert;

class Cookie extends StatefulWidget {
  const Cookie({Key? key}) : super(key: key);

  @override
  State<Cookie> createState() => _CookieState();
}

class _CookieState extends State<Cookie> {
  var recipeName = "Cookie";
  var recipeIngredients = [
    "Flour",
    "Sugar",
    "Butter",
    "Chocolate chips",
    "Vanilla extract",
    "Baking soda",
    "Salt",
  ];

  /*void getData() async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/users/1');
    Response response = await get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);

      setState(() {
        // Update state variables here if needed
      });
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20.0),
          Divider(
            color: Colors.red[850],
            height: 30.0,
            thickness: 2.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.restaurant_menu),
              SizedBox(width: 20.0),
              Text(
                "Recipe Name",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
          Text(
            recipeName,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.blue[800],
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            "Ingredients:",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(height: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: recipeIngredients
                .map(
                  (ingredient) => Text(
                    "• $ingredient",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blue[800],
                    ),
                  ),
                )
                .toList(),
          ),
          SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  '/cake',
                  arguments: {
                    'name': recipeName,
                    'ingredients': recipeIngredients,
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Button color
                onPrimary: Colors.white, // Text color
              ),
              child: Text("Next Recipe"), // Button text
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality for floating action button if needed
        },
        child: Text("+"),
      ),
    );
  }
}
