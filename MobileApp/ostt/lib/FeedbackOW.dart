import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ostt/BusOwnerHomePage.dart';

class FeedbackOW extends StatefulWidget {
  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackOW> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _feedbackController = TextEditingController();

  Future<void> _submitFeedback() async {
    final String name = _nameController.text;
    final String feedback = _feedbackController.text;

    // API endpoint for submitting feedback
    final String url = 'https://osttnetrides.000webhostapp.com/feedback.php';

    // HTTP POST request to submit feedback data
    final http.Response response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': name,
        'feedback': feedback,
      }),
    );

    // Check the response status
    if (response.statusCode == 200) {
      // Feedback submitted successfully
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('Feedback Submitted'),
          content: Text('Thank you for your feedback!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => FeedbackOW()),
                );
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
      // Clear the input fields after submission
      _nameController.clear();
      _feedbackController.clear();
    } else {
      // Failed to submit feedback
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('Submission Failed'),
          content: Text('Failed to submit feedback. Please try again later.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => FeedbackOW()),
                );
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedbacks'),
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
      body: Container(
        color: Colors.lightBlue[50], // Light blue background color
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _feedbackController,
              decoration: InputDecoration(labelText: 'Feedback'),
              maxLines: 5,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _submitFeedback,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}





