import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ostt/AboutMeStudent.dart';
import 'SignIn.dart' show SignIn;
import 'AboutUsStudent.dart';

class StudentHomePage extends StatefulWidget {
  final String email;

  StudentHomePage({required this.email});

  @override
  _StudentHomePageState createState() => _StudentHomePageState();
}

class _StudentHomePageState extends State<StudentHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900], // Navy blue color
        title: Text(
          'Student Dashboard',
          style: TextStyle(color: Colors.white), // White text color
        ),
        leading: Builder(
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
      body: Scrollbar(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            color: Colors.blue[100], // Background color of the container
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        'Welcome to NetRides!',
                        style: TextStyle(
                          color: Colors.blue[600],
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Your ultimate destination for hassle-free transportation.\n',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              // Add functionality for the first button
                            },
                            icon: Image.asset(
                              'assets/student/map.png', // Path to your image asset
                              width: 60, // Adjust width as needed
                              height: 60, // Adjust height as needed
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
                              // Add functionality for the second button
                            },
                            icon: Image.asset(
                              'assets/student/bus.png', // Path to your image asset
                              width: 60, // Adjust width as needed
                              height: 60, // Adjust height as needed
                              fit: BoxFit.contain, // Adjust the fit property as needed
                            ),
                            label: Text('Bus\nDetails'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black, backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              // Add functionality for the fifth button
                            },
                            icon: Image.asset(
                              'assets/student/route.png', // Path to your image asset
                              width: 60, // Adjust width as needed
                              height: 60, // Adjust height as needed
                              fit: BoxFit.contain, // Adjust the fit property as needed
                            ),
                            label: Text('Route\nDetails'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black, backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              // Add functionality for the sixth button
                            },
                            icon: Image.asset(
                              'assets/student/activity.png', // Path to your image asset
                              width: 60, // Adjust width as needed
                              height: 60, // Adjust height as needed
                              fit: BoxFit.contain, // Adjust the fit property as needed
                            ),
                            label: Text('History'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black, backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              // Add functionality for the fifth button
                            },
                            icon: Image.asset(
                              'assets/student/notification.png', // Path to your image asset
                              width: 50, // Adjust width as needed
                              height: 50, // Adjust height as needed
                              fit: BoxFit.contain, // Adjust the fit property as needed
                            ),
                            label: Text('Notifications'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black, backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              // Add functionality for the sixth button
                            },
                            icon: Image.asset(
                              'assets/student/feedback.png', // Path to your image asset
                              width: 50, // Adjust width as needed
                              height: 50, // Adjust height as needed
                              fit: BoxFit.contain, // Adjust the fit property as needed
                            ),
                            label: Text('Feedbacks'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black, backgroundColor: Colors.white,
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
              ],
            ),
          ),
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
                // Navigate to the SignIn screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => StudentHomePage(email: '',)),
                );
              },
            ),
            ListTile(
              title: Text('About Me'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AboutMeStudent(email: widget.email)),
                );
              },
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
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
