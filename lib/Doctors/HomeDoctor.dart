import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:derma/DetailsDoctor.dart';
import 'package:derma/responsive_layout.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../Both/ScanPage.dart';
import 'package:http/http.dart' as http;

import '../Patients/LoginPatient.dart';
import '../Patients/search_screen_patient.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeDoctor(),
  ),
);

class Doctor {
  final String? name;
  final String? image;
  final double? rate;
  final bool? favorite;

  Doctor({
    required this.name,
    required this.image,
    required this.rate,
    required this.favorite,
  });
}

class HomeDoctor extends StatefulWidget {
  @override
  _HomeDoctorState createState() => _HomeDoctorState();
}

class _HomeDoctorState extends State<HomeDoctor> {
  final storage = FlutterSecureStorage();
  Future<List<Doctor>> getAllDoctors() async {
    String? patientId = await Local(storage).getLoginIdPatient();
    final url = Uri.parse('http://dermdiag.somee.com/api/Patients/GetAllDoctors?id=$patientId');
    final response = await http.get(url);
    print(response.body);
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<Doctor> doctors = data.map((item) => Doctor(
        name: item['name'],
        image: item['image'],
        rate: item['rating'],
        favorite: item['isFavourite'],
      )).toList();
      return doctors;
    } else {
      print(response.statusCode);
      throw Exception('Failed to get doctors list. Status code: ${response.statusCode}');
    }
  }
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      builder: (BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/doct.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 200,
                left: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height - 300,
                    color: Colors.grey[300],
                  ),
                ),
              ),
              Positioned(
                top: 40,
                left: 20,
                child: Text(
                  'Welcome, Nadia',
                  style: TextStyle(
                    color: Color.fromRGBO(69, 69, 113, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 20,
                child: Text(
                  'Premium Solutions Awaiting\n Your Selection',
                  style: TextStyle(
                    color: Color.fromRGBO(159, 115, 171, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 170,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: 330,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(27),
                      border: Border.all(
                        color: Color.fromRGBO(69, 69, 113, 1),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: TextField(


                              decoration: InputDecoration(
                                hintText: 'Search for a doctor',
                                border: InputBorder.none,
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                              ),
                              readOnly: true,
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SearchScreen()),
                                );
                              },
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 225,
                left: 20,
                child: Text(
                  'Top Doctors',
                  style: TextStyle(
                    color: Color.fromRGBO(69, 69, 113, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 245,
                left: 20,
                right: 0,
                child: Container(
                  height: 200,
                  child: FutureBuilder<List<Doctor>>(
                    future: getAllDoctors(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircleAvatar(child: CircularProgressIndicator(),backgroundColor: Colors.transparent,));
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else if(snapshot.connectionState == ConnectionState.done){
                        final doctors = snapshot.data!;
                        return ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            for (var doctor in doctors)
                              CircleImageCard(
                                imagePath: doctor.image??"",
                                doctorName: doctor.name??"name",
                                rating: doctor.rate??1.0,
                                onPressed: () {
                                  // Add your functionality here
                                },
                              ),
                          ],
                        );
                      }
                      return Center(child: CircleAvatar(child: CircularProgressIndicator(),backgroundColor: Colors.transparent,));
                    },
                  ),
                ),
              ),
              Positioned(
                top: 445,
                left: 20,
                right: 20,
                child: Center(
                  child: Container(
                    height: 150,
                    width: 330,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF454571),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/images/face.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 90,
                          child: Text(
                            'Empower your skin health with\n'
                                'diagnosis. Try it today for precise\n'
                                'results personalized to you.',
                            style: TextStyle(
                              color: Color.fromRGBO(69, 69, 113, 1),
                              fontSize: 14, // Reduced from 16 to 14
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 105,
                          right: 35,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ScanPage()),
                              );
                            },
                            child: Container(
                              width: 192,
                              height: 43,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 170,
                                      height: 43,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFEAEAEA),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(18),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                      width: 176.64,
                                      height: 40,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF454571),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(13.50),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      'Start',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CircleImageCard extends StatelessWidget {
  final String imagePath;
  final String doctorName;
  final double rating;
  final VoidCallback onPressed;


  CircleImageCard({
    required this.imagePath,
    required this.doctorName,
    required this.rating,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 100,
      height: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
              image: DecorationImage(
                image:imagePath.isNotEmpty? NetworkImage(imagePath):AssetImage("assets/images/doc.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            doctorName,
            style: TextStyle(
              color: Color.fromRGBO(69, 69, 113, 1),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RatingBar.builder(
                initialRating: rating,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 12,
                itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(width: 5),
              SizedBox(
                width: 8,
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 12,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsDoctor()),
              );
            },
            child: Container(
              width: 70,
              height: 25,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(159, 115, 171, 1),
                    Color.fromRGBO(159, 115, 171, 1),
                  ],
                ),
              ),
              child: Text(
                'Details',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}