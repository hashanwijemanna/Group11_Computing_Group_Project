import 'package:flutter/material.dart';
import 'package:ostt/SignUpParent.dart';
import 'package:ostt/SignUpStudent.dart';
import 'package:ostt/SignUpOwner.dart';
import 'package:ostt/SignUpDriver.dart';
import 'dart:async';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Net Rides",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.blue, // Set background color of the entire app to blue
      ),
      home: Category(),
    );
  }
}

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue, // Set background color to light blue
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Who are you?",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20), // Add some space between text and buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpStudent()), //to be change!!!!
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.white,
              ),
              child: Text("A Student", style: TextStyle(color: Colors.lightBlue)),
            ),
            SizedBox(height: 10), // Add some space between buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpParent()), //to be change!!!!
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.white,
              ),
              child: Text("A Parent", style: TextStyle(color: Colors.lightBlue)),
            ),
            SizedBox(height: 10), // Add some space between buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpOwner()), //to be change!!!!
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.white,
              ),
              child: Text("A Bus Owner", style: TextStyle(color: Colors.lightBlue)),
            ),
            SizedBox(height: 10), // Add some space between buttons

          ],
        ),
      ),
    );
  }
}

