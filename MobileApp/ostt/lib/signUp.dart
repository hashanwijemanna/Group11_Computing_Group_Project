import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'SignIn.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Net Rides",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.blue, // Set background color of the entire app to blue
      ),
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  String _userName = '';
  String _email = '';
  String _password = '';
  String _userType = '';

  Future<void> insertRecord() async {
    try {
      String uri = "http://10.0.2.2/practice_api/insert_record.php";

      var res = await http.post(Uri.parse(uri), body: {
        "username": _userName,
        "email": _email,
        "user_type": _userType,
        "password": _password
      });

      if (res.statusCode == 200) {
        var response = jsonDecode(res.body);
        if (response["success"] == true) {
          print("Record Inserted!");
          _navigateToSignIn(context);
        } else {
          print("Error: ${response['message']}");
        }
      } else {
        print("Error: HTTP ${res.statusCode} ${res.reasonPhrase}");
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  void _navigateToSignIn(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignIn()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/sign.png', // Path to your image asset
            width: MediaQuery.of(context).size.width, // Width equal to device width
            fit: BoxFit.fitWidth, // Fit the width of the device
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: MediaQuery.of(context).padding.top + 20), // Adjust for system status bar
                  Text(
                    '\n\n\n\n',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20.0), // Add a gap between "Sign Up" text and image
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'User Name',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your user name';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            setState(() {
                              _userName = value;
                            });
                          },
                        ),
                        SizedBox(height: 20.0),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            setState(() {
                              _email = value;
                            });
                          },
                        ),
                        SizedBox(height: 20.0),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'User Type',
                            border: OutlineInputBorder(),
                          ),
                          items: [
                            DropdownMenuItem(
                              child: Text('Student'),
                              value: 'Student',
                            ),
                            DropdownMenuItem(
                              child: Text('Parent'),
                              value: 'Parent',
                            ),
                            DropdownMenuItem(
                              child: Text('Bus Owner'),
                              value: 'Bus Owner',
                            ),
                            DropdownMenuItem(
                              child: Text('Bus Driver'),
                              value: 'Bus Driver',
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              _userType = value!;
                            });
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please select your user type';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20.0),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            setState(() {
                              _password = value;
                            });
                          },
                        ),
                        SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState != null &&
                                _formKey.currentState!.validate()) {
                              // Process sign-up
                              print('User Name: $_userName');
                              print('Email: $_email');
                              print('User Type: $_userType');
                              print('Password: $_password');
                              insertRecord();
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.green),
                            textStyle: MaterialStateProperty.all<TextStyle>(
                                TextStyle(color: Colors.white)), // Set text color to white
                          ),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
