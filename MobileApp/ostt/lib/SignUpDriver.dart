import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ostt/BusOwnerHomePage.dart';
import 'SignIn.dart';

class SignUpDriver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SignUpPage();
  }
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  String _userName = '';
  String _licenseNumber = '';
  String _vehicleNumber = '';
  String _route = '';
  String _email = '';
  String _contact = '';
  String _password = '';
  bool _agree = false;

  Future<void> insertRecord() async {
    try {
      String uri = "https://osttnetrides.000webhostapp.com/insert_record_driver.php";

      var res = await http.post(Uri.parse(uri), body: {
        "username": _userName,
        "email": _email,
        "license": _licenseNumber,
        "vehicle": _vehicleNumber,
        "route": _route,
        "contact": _contact,
        "password": _password
      });

      if (res.statusCode == 200) {
        var response = jsonDecode(res.body);
        if (response["success"] == true) {
          print("Record Inserted!");
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => SignUpDriver()),
          ); // Redirect to the previous page
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Bus Driver'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blue[900]), // Back button icon with navy blue color
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => BusOwnerHomePage(email: '')),
            );// Go back to the previous page
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/sign.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitWidth,
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: MediaQuery.of(context).padding.top + 20),
                      Text(
                        '\n\n\n',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Full Name',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter name';
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
                                labelText: 'License Number',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter license number';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                setState(() {
                                  _licenseNumber = value;
                                });
                              },
                            ),
                            SizedBox(height: 20.0),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Vehicle Number',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter vehicle number';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                setState(() {
                                  _vehicleNumber = value;
                                });
                              },
                            ),
                            SizedBox(height: 20.0),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Route Starting Location',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter route';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                setState(() {
                                  _route = value;
                                });
                              },
                            ),
                            SizedBox(height: 20.0),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Email",
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter your email";
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
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Contact Number',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your contact number';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                setState(() {
                                  _contact = value;
                                });
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
                            Row(
                              children: <Widget>[
                                Checkbox(
                                  value: _agree,
                                  onChanged: (value) {
                                    setState(() {
                                      _agree = value ?? false;
                                    });
                                  },
                                ),
                                Text(
                                  'I hereby agree that the above-given\ninformation are correct.',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Colors.green),
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                    TextStyle(color: Colors.white)),
                              ),
                              onPressed: () {
                                if (_formKey.currentState != null &&
                                    _formKey.currentState!.validate() &&
                                    _agree) {
                                  print('User Name: $_userName');
                                  print('Email: $_email');
                                  print('Contact Nu: $_contact');
                                  print('Password: $_password');
                                  insertRecord();
                                } else {
                                  if (!_agree) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Please agree to the terms to proceed.',
                                        ),
                                      ),
                                    );
                                  }
                                }
                              },
                              child: Text(
                                'Register',
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
