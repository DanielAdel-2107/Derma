import 'package:flutter/material.dart';
import 'package:derma/DetailsDoctor.dart';

import 'DetailsPatient.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePatient(),
  ),
);

class HomePatient extends StatefulWidget {
  @override
  _HomePatientState createState() => _HomePatientState();
}

class _HomePatientState extends State<HomePatient> {
  bool isImageExpanded = false;
  final PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/doct.png'),
                ),
              ),
            ),
          ),

          Positioned(
            top: 95,
            left: 35,
            child: Text(
              'Welcome, Dr.Kana!',
              style: TextStyle(
                color: Color.fromRGBO(69, 69, 113, 1),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 135,
            left: 35,
            child: Text(
              "Let's Check Your Patient",
              style: TextStyle(
                color: Color.fromRGBO(159, 115, 171, 1),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 210,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 350,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Search for a doctor',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 0,
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(69, 69, 113, 1),
                                  borderRadius: BorderRadius.circular(27),
                                  border: Border.all(
                                    color: Color.fromRGBO(69, 69, 113, 1),
                                    width: 1,
                                  ),
                                ),
                                child: Center(
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 270,
            left: 20,
            child: Container(
              height: MediaQuery.of(context).size.height - 320,
              width: MediaQuery.of(context).size.width - 40,
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(10, (index) {
                    return GestureDetector(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPatient()),);
                      },
                      child: Card(
                        margin: EdgeInsets.only(bottom: 20),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(15),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/images/patient.jpg'),
                          ),
                          title: Text(
                            'Patient Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color.fromRGBO(69, 69, 113, 1),
                            ),
                          ),
                          subtitle: Text(
                            'Monday at 11 am',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(69, 69, 113, 1),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
