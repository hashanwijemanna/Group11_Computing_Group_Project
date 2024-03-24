import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'StudentHomePage.dart';

class BusDetailsST extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DriverDetails();
  }
}

class DriverDetails extends StatefulWidget {
  @override
  _DriverDetailsState createState() => _DriverDetailsState();
}

class _DriverDetailsState extends State<DriverDetails> {
  List<dynamic> _data = [];
  List<dynamic> _filteredData = [];
  TextEditingController _searchController = TextEditingController();

  void fetchData() async {
    var url = 'https://osttnetrides.000webhostapp.com/display_bus.php';
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // Check if the response is not empty
      if (response.body.isNotEmpty) {
        // Parse the JSON response
        var jsonResponse = json.decode(response.body);
        // Check if the response contains the 'error' key
        if (jsonResponse is Map && jsonResponse.containsKey('error')) {
          print('Error: ${jsonResponse['error']}');
        } else {
          // Assign the data to the _data variable
          setState(() {
            _data = jsonResponse;
            _filteredData = List.from(_data);
          });
        }
      } else {
        print('Response is empty');
      }
    } else {
      // Handle error if API request fails
      print('Failed to fetch data');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData(); // Fetch data when the widget initializes
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus Details'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blue[900]),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => StudentHomePage(email: '')),
            );
          },
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: TextField(
              controller: _searchController,
              onChanged: _filterData,
              decoration: InputDecoration(
                hintText: 'Search...',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: [
              DataColumn(
                label: Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Text(
                      'Vehicle',
                      style: TextStyle(
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
                ),
              ),
              DataColumn(
                label: Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Text(
                      'Starting Location',
                      style: TextStyle(
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
                ),
              ),
              DataColumn(
                label: Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Text(
                      'Contact',
                      style: TextStyle(
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
                ),
              ),
            ],
            rows: _filteredData.map((row) {
              return DataRow(
                cells: [
                  DataCell(Text(row['vehicle'].toString())),
                  DataCell(Text(row['route'].toString())),
                  DataCell(
                    GestureDetector(
                      onTap: () {
                        _launchPhone(row['contact'].toString());
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.green,
                          ),
                          SizedBox(width: 5),
                          Text(
                            row['contact'].toString(),
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  void _filterData(String value) {
    setState(() {
      _filteredData = _data.where((row) {
        return row['vehicle'].toString().toLowerCase().contains(value.toLowerCase()) ||
            row['route'].toString().toLowerCase().contains(value.toLowerCase()) ||
            row['contact'].toString().toLowerCase().contains(value.toLowerCase());
      }).toList();
    });
  }
}

void _launchPhone(String phoneNumber) async {
  String url = 'tel:$phoneNumber';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
