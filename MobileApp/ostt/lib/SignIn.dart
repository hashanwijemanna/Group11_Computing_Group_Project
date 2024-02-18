import 'package:flutter/material.dart';
import 'Register.dart';
import 'package:http/http.dart' as http;

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Net Rides",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.blue, // Set background color of the entire app to blue
      ),
      home: Sign(),
    );
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
      String uri = "http://10.0.2.2/practice_api/signIn.php";

      var res = await http.post(Uri.parse(uri), body: {
        "email": _email,
        "password": _password
      });

      if (res.statusCode == 200) {
        if (res.body.isNotEmpty && !res.body.startsWith("Invalid")) {
          // Redirect based on response from PHP
          switch (res.body) {
            case "Student":
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => StudentHomePage()),
              );
              break;
            case "Parent":
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ParentHomePage()),
              );
              break;
            case "Bus Owner":
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => BusOwnerHomePage()),
              );
              break;
            case "Bus Driver":
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => BusDriverHomePage()),
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

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: Text('Sign Up Page'),
      ),
    );
  }
}

class StudentHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Home Page'),
      ),
      body: Center(
        child: Text('Welcome to Student Home Page'),
      ),
    );
  }
}

class ParentHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parent Home Page'),
      ),
      body: Center(
        child: Text('Welcome to Parent Home Page'),
      ),
    );
  }
}

class BusOwnerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus Owner Home Page'),
      ),
      body: Center(
        child: Text('Welcome to Bus Owner Home Page'),
      ),
    );
  }
}

class BusDriverHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus Driver Home Page'),
      ),
      body: Center(
        child: Text('Welcome to Bus Driver Home Page'),
      ),
    );
  }
}
