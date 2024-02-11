import 'dart:async';
import 'package:flutter/material.dart';
import 'SecondPage.dart'; // Import the SecondPage

void main() {
  runApp(NetRides());
}

class NetRides extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Net Rides",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: NetRidesHome(), // Use NetRidesHome widget as the home
    );
  }
}

class NetRidesHome extends StatefulWidget {
  @override
  _NetRidesHomeState createState() => _NetRidesHomeState();
}

class _NetRidesHomeState extends State<NetRidesHome> {
  Future<void> _navigateToSecondPage() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SecondPage()));
  }

  @override
  void initState() {
    super.initState();
    _navigateToSecondPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset(
              'assets/FirstUI-BG.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/Logo.jpg',
              width: 60,
              height: 60,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/white.jpg',
                width: 100,
                height: 80,
              ),
            ),
            Image.asset(
              'assets/Logo.jpg',
              width: 50,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
