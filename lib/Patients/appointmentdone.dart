import 'package:flutter/material.dart';
import 'package:derma/Doctors/root_page.dart';

void main() {
  runApp(Appointment());
}

class Appointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            // Background image

            Positioned(
              top: 290,
              left: 70,
              right: 70,
              child: Container(
                width: 250,
                height: 420,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/img_1.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            // Text overlay
            Positioned(
              top: 400,
              left: 155,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Jane Deo ',
                    style: TextStyle(
                      fontFamily: 'poe',
                      color: Color.fromRGBO(98, 79, 130, 1),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 200.88,
              left: 16.65,
              right: 16.65,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    textAlign: TextAlign.center,
                    'Your appointment confirmed successfully',
                    style: TextStyle(
                      fontFamily: 'poe',
                      color: Color.fromRGBO(98, 79, 130, 1),
                      fontSize: 22,
                    ),
                  ),                ],
              ),
            ),
            Positioned(
              top: 430.88,
              left: 116.65,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Doctor',
                    style: TextStyle(
                      fontFamily: 'poe',
                      color: Colors.black,
                      fontSize: 11,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Time',
                    style: TextStyle(
                      fontFamily: 'poe',
                      color: Colors.black,
                      fontSize: 11,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Day',
                    style: TextStyle(
                      fontFamily: 'poe',
                      color: Colors.black,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 370.88,
              left: 216.65,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                ],
              ),
            ),
            Positioned(
              top: 430.88,
              left: 216.65,
              right: 116.65,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Doctor',
                    style: TextStyle(
                      fontFamily: 'poe',
                      color: Colors.black,
                      fontSize: 11,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Time',
                    style: TextStyle(
                      fontFamily: 'poe',
                      color: Colors.black,
                      fontSize: 11,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Day',
                    style: TextStyle(
                      fontFamily: 'poe',
                      color: Colors.black,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),


            Positioned(
              top: 560.88,
              left: 120,
              right: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Where Skin Meets Care, '
                        'DermDiag Leads.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'poe',
                      color: Color.fromRGBO(69, 69, 113, 0.69),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 295.88,
              left: 140,
              right: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage:AssetImage('assets/images/doc.png') ,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 700.88,
              left: 40,
              right: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25),
                  Container(
                    height: 35,
                    width:315,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(69, 69, 113, 0.69),
                          Color.fromRGBO(69, 69, 113, 0.69),


                        ],
                      ),
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RootPage()),
                          );
                        },
                        child: Text(
                          "Choose a doctor",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: 'poe',
                            height: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}


