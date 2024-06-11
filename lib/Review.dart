import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

import 'DetailsDoctor.dart';
import 'Doctors/LoginDoctor.dart';
import 'Patients/LoginPatient.dart';
import 'Pop.dart';
import 'ratenotification.dart';

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  final storage = FlutterSecureStorage();
  double _rating = 0;
  TextEditingController _feedbackController = TextEditingController();

  Future<String?> getLoginId() async {
    return await storage.read(key: 'doctorId');
  }

  Future<String?> getLoginIdPatient() async {
    return await storage.read(key: 'patientId');
  }

  void _submitReview() async {
    String? patientId = await getLoginIdPatient();
    String? doctorId = await getLoginId();
    final String feedback = _feedbackController.text;

    if (doctorId != null && patientId != null) {
      final String url = 'http://dermdiag.somee.com/api/Patients/AddReview?doctorId=doctorId&patientId=patientId';

      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        Navigator.of(context).pop(); // Close the review dialog
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => RatingNotification(_rating)),
        );
      } else {
        // Handle the error appropriately
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Error'),
            content: Text('Failed to submit review. Please try again.'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Doctor ID or Patient ID not found. Please log in again.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
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
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsDoctor()),);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text('Add Review',
        style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromRGBO(69, 69, 113, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      'Rate your experience:',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF9F73AB),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    RatingBar.builder(
                      initialRating: 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemCount: 5,
                      itemSize: 40.0,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        setState(() {
                          _rating = rating;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.0),
              Center(
                child: Text(
                  'Would you like to add feedback?',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF9F73AB),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: _feedbackController,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Enter your feedback...',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the review dialog
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(69, 69, 113, 1),
                      ),
                    ),
                    child: Text('Cancel',style: TextStyle(color:Colors.white),),
                  ),
                  SizedBox(width:75.0),ElevatedButton(
                    onPressed: _submitReview,
                    child: Text('Submit',
                      style: TextStyle(color:Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(69, 69, 113, 1),
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReviewPage(),
    ),
  );
}
