import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ostt/StudentHomePage.dart';
import 'AboutUsStudent.dart';
import 'SignIn.dart';

class AboutMeStudent extends StatefulWidget {
  final String email;


  AboutMeStudent({required this.email});

  @override
  _AboutMePageState createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMeStudent> {
  Map<String, dynamic> userInfo = {};
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // Fetch user information when the page initializes
    fetchUserInfo();
  }

  Future<void> fetchUserInfo() async {
    final response = await http.post(
      Uri.parse('http://10.0.2.2/practice_api/user_info.php'), // Replace with your API endpoint
      body: {
        'email': widget.email,
      },
    );

    if (response.statusCode == 200) {
      setState(() {
        userInfo = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load user information');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue[900], // Navy blue color
        title: Text('About Me', style: TextStyle(color: Colors.white)), // White text color
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white), // Menu icon with white color
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer(); // Open the drawer
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blue[100], // Background color of the container
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'User Details',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/users/student.png'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                '\n\nUser ID: ${userInfo['user_id'] ?? 'Loading...'}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'User Name: ${userInfo['username'] ?? 'Loading...'}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Email: ${userInfo['email'] ?? 'Loading...'}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'User Type: ${userInfo['user_type'] ?? 'Loading...'}',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue[900], // Navy blue color
              ),
              accountName: Text(
                'NetRides',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/logo.png'), // Add your logo image here
              ),
            ),
            ListTile(
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => StudentHomePage(email: '',)),
                );
              },
            ),
            ListTile(
              title: Text(
                'About Me',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              tileColor: Colors.green, // Red background color for the tile
              onTap: () {
                // Navigate to the SignIn screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AboutMeStudent(email: widget.email)),
                );
              },
            ),
            ListTile(
              title: Text('Bus Details'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Navigate to the About Me page or perform any other action
              },
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUsStudent()),
                );
              },
            ),
            ListTile(
              title: Text(
                'Sign Out',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              tileColor: Colors.red, // Red background color for the tile
              onTap: () {
                // Navigate to the SignIn screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignIn()),
                );
              },
            ),
            ListTile(
              title: Text(
                'NetRides All Rights Reserved 2024',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 12.0,
                ),
              ),
              onTap: () {}, // Add onTap function if needed
            ),
          ],
        ),
      ),
    );
  }
}
