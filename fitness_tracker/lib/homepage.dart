import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'metrics.dart'; // Import the metrics.dart file

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showMore() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => MetricsPage()), // Navigate to MetricsPage
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: Text(
          'Fitness Tracker',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'YourCustomFont',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Activity',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'YourCustomFont',
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Goal: 82/150KCAL',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'YourCustomFont',
                        ),
                      ),
                      Text(
                        'Steps: 3,506',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'YourCustomFont',
                        ),
                      ),
                      Text(
                        'Distance: 2.30 KM',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'YourCustomFont',
                        ),
                      ),
                    ],
                  ),
                ),
                CircularPercentIndicator(
                  radius: 150,
                  lineWidth: 15,
                  percent: 0.5,
                  progressColor: Colors.deepPurple,
                  backgroundColor: Colors.deepPurple.shade200,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Text(
                    '50%',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'YourCustomFont',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Title: Today\'s Goals',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'YourCustomFont',
              ),
            ),
            SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Heart Rate: 88bpm average'),
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text('Health Metrics'),
                trailing: ElevatedButton(
                  onPressed:
                      _showMore, // Call _showMore method when button is pressed
                  child: Text('Show More'),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_new),
            label: 'Measure',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            label: 'Charts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
