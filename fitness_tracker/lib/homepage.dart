import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart'; // Import the sleek_circular_slider package

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
        builder: (context) => MetricsPage(),
      ), // Navigate to MetricsPage
    );
  }

  @override
  Widget build(BuildContext context) {
    final slider = SleekCircularSlider(
      min: 0,
      max: 150,
      initialValue: 82,
      onChange: (double value) {
        // callback providing a value while it's being changed (with a pan gesture)
      },
      onChangeStart: (double startValue) {
        // callback providing a starting value (when a pan gesture starts)
      },
      onChangeEnd: (double endValue) {
        // callback providing an ending value (when a pan gesture ends)
      },
      innerWidget: (double value) {
        // custom widget inside the slider (gets a slider value from the callback)
        appearance:
        CircularSliderAppearance(
          customColors: CustomSliderColors(
            trackColor: Colors.deepPurple[100], // Set track color
            progressBarColors: [Colors.deepPurple], // Set progress bar color
          ),
          customWidths: CustomSliderWidths(
            trackWidth: 15, // Set track width
            progressBarWidth: 15, // Set progress bar width
          ),
          infoProperties: InfoProperties(
            mainLabelStyle: TextStyle(
              fontSize: 48, // Increase font size for main label
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
          startAngle: 180, // Set start angle to make it clockwise
          angleRange: 360, // Set angle range to make it full circle
        );
        return Center(
          child: Text(
            '${value.toInt()}',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'YourCustomFont',
            ),
          ),
        );
      },
    );

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
                slider, // Replace CircularPercentIndicator with SleekCircularSlider
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Today\'s Goals',
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
                  onPressed: _showMore,
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
