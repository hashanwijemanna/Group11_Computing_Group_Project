import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ostt/AboutMeDriver.dart';
import 'package:ostt/FeedbackDR.dart';
import 'AboutUsDriver.dart';
import 'SignIn.dart' show SignIn;

class BusDriverHomePage extends StatefulWidget {
  final String email;

  BusDriverHomePage({required this.email});

  @override
  _BusDriverHomePageState createState() => _BusDriverHomePageState();
}

class _BusDriverHomePageState extends State<BusDriverHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900], // Navy blue color
        title: Text(
          'Bus Driver Dashboard', // Changed title to differentiate from Bus Owner
          style: TextStyle(color: Colors.white), // White text color
        ),
        leading: Builder( // Wrap with Builder
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.white), // Menu icon with white color
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Open the drawer
              },
            );
          },
        ),
      ),
      body: Container(
        color: Colors.blue[100], // Background color of the container
        child: Column(
          children: [
            SizedBox(height: 40),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
              ),
              items: [
                AssetImage('assets/slider/slide1.jpg'),
                AssetImage('assets/slider/slide2.jpg'),
                AssetImage('assets/slider/slide3.jpg'),
                AssetImage('assets/slider/slide4.jpg'),
                AssetImage('assets/slider/slide5.jpg'),
                // Add more images as needed
              ].map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Image(
                        image: item,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20), // Spacer
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '\n\nWelcome to NetRides!',
                    style: TextStyle(
                      color: Colors.blue[600],
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '\nYour ultimate destination for hassle-free transportation.',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Spacer
            Row( // Moved the row inside the Column
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Add functionality for Map button
                  },
                  icon: Image.asset(
                    'assets/student/map.png', // Path to your image asset
                    width: 50, // Adjust width as needed
                    height: 50, // Adjust height as needed
                    fit: BoxFit.contain, // Adjust the fit property as needed
                  ),
                  label: Text('Map'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black, backgroundColor: Colors.white, // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => FeedbackFormDR()),
                    );
                  },
                  icon: Image.asset(
                    'assets/student/feedback.png', // Path to your image asset
                    width: 50, // Adjust width as needed
                    height: 50, // Adjust height as needed
                    fit: BoxFit.contain, // Adjust the fit property as needed
                  ),
                  label: Text('Feedbacks'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black, backgroundColor: Colors.white, // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
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
              title: Text(
                'Dashboard',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              tileColor: Colors.green, // Red background color for the tile
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => BusDriverHomePage(email: '',)),
                );
              },
            ),
            ListTile(
              title: Text('About Me'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AboutMeDriver(email: widget.email)),
                );
              },
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUsDriver()),
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
