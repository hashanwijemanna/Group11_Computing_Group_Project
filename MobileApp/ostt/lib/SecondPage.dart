import 'package:flutter/material.dart';
import 'dart:async';
import 'SignIn.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Net Rides",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.blue, // Set background color of the entire app to blue
      ),
      home: Welcome(),
    );
  }
}

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  Future<void> _navigateToSignIn() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignIn()));
  }

  @override
  void initState() {
    super.initState();
    _navigateToSignIn();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/welcome.jpg',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
