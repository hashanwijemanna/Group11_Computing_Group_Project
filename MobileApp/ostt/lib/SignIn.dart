import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'StudentHomePage.dart';
import 'ParentHomePage.dart';
import 'BusOwnerHomePage.dart';
import 'BusDriverHomePage.dart';
import 'Register.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sign();
  }
}

class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String _errorMessage = '';

  void _navigateToSignUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Register()),
    );
  }

  void _signIn() async {
    try {
      String uri = "https://osttnetrides.000webhostapp.com/signIn.php";

      var res = await http.post(Uri.parse(uri), body: {
        "email": _email,
        "password": _password
      });

      if (res.statusCode == 200) {
        if (res.body.isNotEmpty && !res.body.startsWith("Invalid")) {
          // Redirect based on response from PHP
          switch (res.body) {
            case "user_student":
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => StudentHomePage(email: _email,)),
              );
              break;
            case "user_parent":
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ParentHomePage(email: _email,)),
              );
              break;
            case "user_owner":
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => BusOwnerHomePage(email: _email,)),
              );
              break;
            case "user_driver":
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => BusDriverHomePage(email: _email)),
              );
              break;
            default:
            // Handle unknown response
              setState(() {
                _errorMessage = "Unknown user type";
              });
              break;
          }
        } else {
          setState(() {
            _errorMessage = res.body;
          });
        }
      } else {
        setState(() {
          _errorMessage = "HTTP ${res.statusCode} ${res.reasonPhrase}";
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = "Error: $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Text(
                  'Sign In\n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    color: Colors.grey,
                  ),
                ),
                if (_errorMessage.isNotEmpty)
                  Text(
                    _errorMessage,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
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
                            // Process sign-in
                            print('Email: $_email');
                            print('Password: $_password');
                            _signIn();
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                          textStyle: MaterialStateProperty.all<TextStyle>(
                              TextStyle(color: Colors.white)),
                        ),
                        child: Text(
                          'Sign In',
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
                SizedBox(height: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\n\n\n\nDon\'t have an account?',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () => _navigateToSignUp(context),
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                            TextStyle(color: Colors.white)),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
