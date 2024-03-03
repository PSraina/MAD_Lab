import 'package:flutter/material.dart';

void main() {
  runApp(ProfilePageApp());
}

class ProfilePageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Color(0xFFD3C9FF), // Light purple pastel color
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.account_circle,
              color: Color(0xFF86CAFF), // Light blue pastel color
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/user.jpg'),
                ),
              ),
              SizedBox(height: 20),
              _buildInfoRow('Name:', 'Sraina Panchangam',
                  Color(0xFFFEE6C4)), // Yellow pastel color
              _buildInfoRow('Date of Birth:', '27th April, 2003',
                  Color(0xFFD3C9FF)), // Light purple pastel color
              _buildInfoRow('School:', 'Pawar Public School',
                  Color(0xFFE3C0FF)), // Light purple pastel color
              _buildInfoRow('Junior College:', 'Pace Junior Science College',
                  Color(0xFFBCE0FD)), // Light blue pastel color
              _buildInfoRow(
                  'College/University:',
                  'Don Bosco Institute of Technology, Mumbai University',
                  Color(0xFFD3C9FF)), // Light purple pastel color
              _buildInfoRow(
                  'Hobbies:',
                  'Singing, Swimming, Playing Sports, Art & Craft',
                  Color(0xFFE3C0FF)), // Light purple pastel color
              _buildInfoRow(
                  'Strength:',
                  'Focused and Dedicated, Proactive, Quick Learner',
                  Color(0xFFBCE0FD)), // Light blue pastel color
              _buildInfoRow(
                  'Technical Skills:',
                  'C, Java, Python, Web Dev, App Development',
                  Color(0xFFFEE6C4)), // Yellow pastel color
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPress activity here
        },
        child: Icon(Icons.edit),
        backgroundColor: Color(0xFFD3C9FF), // Light purple pastel color
      ),
    );
  }

  Widget _buildInfoRow(String title, String text, Color color) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xFF86CAFF), // Light blue pastel color
            ),
          ),
          SizedBox(height: 2),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
