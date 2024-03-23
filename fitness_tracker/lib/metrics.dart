import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MetricsPage extends StatelessWidget {
  const MetricsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Metrics Page',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '9.35 Mar.24, 2024',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 20),
            CircularPercentIndicator(
              radius: 150,
              lineWidth: 15,
              percent: 0.542, // Represents 54.2%
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple.shade200,
              circularStrokeCap: CircularStrokeCap.round,
              center: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '54.2',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'kg',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Metrics',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      leading: Icon(Icons.fitness_center),
                      title: Text('Weight: 54.2kg'),
                      subtitle: LinearPercentIndicator(
                        width: 100,
                        lineHeight: 10,
                        percent: 0.542, // Represents 54.2%
                        progressColor: Colors.deepPurple,
                        backgroundColor: Colors.deepPurple.shade200,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.calculate),
                      title: Text('BMI: 18.5'),
                      subtitle: LinearPercentIndicator(
                        width: 100,
                        lineHeight: 10,
                        percent: 0.185, // Represents 18.5%
                        progressColor: Colors.deepPurple,
                        backgroundColor: Colors.deepPurple.shade200,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.local_fire_department),
                      title: Text('Body Fat: 20.0%'),
                      subtitle: LinearPercentIndicator(
                        width: 100,
                        lineHeight: 10,
                        percent: 0.2, // Represents 20.0%
                        progressColor: Colors.deepPurple,
                        backgroundColor: Colors.deepPurple.shade200,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.local_fire_department),
                      title: Text('Body Water: 53.3%'),
                      subtitle: LinearPercentIndicator(
                        width: 100,
                        lineHeight: 10,
                        percent: 0.53, // Represents 20.0%
                        progressColor: Colors.deepPurple,
                        backgroundColor: Colors.deepPurple.shade200,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.local_fire_department),
                      title: Text('BMR: 1319kcal'),
                      subtitle: LinearPercentIndicator(
                        width: 100,
                        lineHeight: 10,
                        percent: 0.7, // Represents 20.0%
                        progressColor: Colors.deepPurple,
                        backgroundColor: Colors.deepPurple.shade200,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
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
