import 'package:flutter/material.dart';
import 'Category.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Net Rides",
      theme: ThemeData(
        primarySwatch: Colors.blue, // Set primary color of the app to blue
      ),
      home: Signup(),
    );
  }
}

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  int _currentIndex = 0; // Tracks the current signup page index
  List<String> _signupImages = [
    'assets/signup1.jpg',
    'assets/signup2.jpg',
    'assets/signup3.jpg',
    'assets/signup4.jpg',
  ];

  void _nextPage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _signupImages.length;
    });
  }

  void _redirectToOtherPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CategoryPage()), //changed!!!!
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              _signupImages[_currentIndex],
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            if (_currentIndex == _signupImages.length - 1) // Show button only for signup4 page
              Positioned(
                bottom: 20.0,
                right: 20.0,
                child: ElevatedButton(
                  onPressed: _redirectToOtherPage,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Set button background color to white
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.black, // Set button text color to black
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            else // Show "Next" button for other pages
              Positioned(
                bottom: 20.0,
                right: 20.0,
                child: ElevatedButton(
                  onPressed: _nextPage,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Set button background color to white
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.black, // Set button text color to black
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
