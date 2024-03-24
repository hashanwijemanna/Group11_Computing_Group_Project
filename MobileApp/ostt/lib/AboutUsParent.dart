import 'package:flutter/material.dart';
import 'package:ostt/ParentHomePage.dart';

class AboutUsParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Net Rides",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: About(),
    );
  }
}

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blue[900]), // Back button icon with navy blue color
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ParentHomePage(email: '')),
            );// Go back to the previous page
          },
        ),
      ),
      backgroundColor: Colors.blue[100], // Set background color for the entire screen
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/sign.png', // Path to your image asset
                  width: MediaQuery.of(context).size.width, // Width equal to device width
                  fit: BoxFit.fitWidth, // Fit the width of the device
                ),
                SizedBox(height: 20), // Adding some space between the image and other content
                Text(
                  'Net Rides',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10), // Adding some space between the image and other content
                Text(
                  'Your ultimate destination for hassle-free transportation.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
