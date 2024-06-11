import 'package:derma/ChatPage.dart';
import 'package:flutter/material.dart';
import 'package:derma/Patients/HomePatient.dart';
void main() {
  runApp(const DetailsPatient());
}

class DetailsPatient extends StatelessWidget {
  const DetailsPatient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        body: Stack(
          children: [
            // Background image and navigation icons
            Positioned(
              top: 75,  left: 60,  child: Transform(
              transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),    child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,          MaterialPageRoute(builder: (context) => HomePatient()),        );

             },      child: Container(
              width: 34,        height: 34,        decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/next(2).png"),            fit: BoxFit.fill,          ),        ),      ),    ),  ),),
               Positioned(
              top: 75,  right: 0,  child: Transform(
              transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),    child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,          MaterialPageRoute(builder: (context) => ChatApp()),        );      },      child: Container(
              width: 34,        height: 34,        decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/next(1).png"),            fit: BoxFit.fill,          ),        ),      ),    ),  ),),

            // Doctor details
            Positioned(
              top: 230,
              left: 130,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nadia Ahmed',
                    style: TextStyle(
                      color: Color.fromRGBO(69, 69, 113, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 90,
              left: 110,
              child: Container(
                width: 134,
                height: 128,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 134,
                        height: 128,
                        decoration: ShapeDecoration(
                          color: Color(0xFFD9D9D9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 14,
                      top: 0,
                      child: Container(
                        width: 105,
                        height: 128,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/doctor1.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Case Description
            // Positioned(
            //   top: 250,
            //   left: 20,
            //   child: Center(
            //     child: Padding(
            //       padding: const EdgeInsets.all(20.0),
            //       child: Text(
            //         'Case Description',
            //         textAlign: TextAlign.center,
            //         style: TextStyle(
            //           fontSize: 16,
            //           color: Color.fromRGBO(69, 69, 113, 1),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Booked Appointment Date
            Positioned(
              top: 250,
              left: 20,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Booked Appointment Date: 20 April 2024',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(69, 69, 113, 1),
                    ),
                  ),
                ),
              ),
            ),
            // Treatment Plan
            Positioned(
              top: 330,
              left: 20,
              right: 20,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Treatment Plan',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(69, 69, 113, 1),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '1. Surgery: Removal of cancerous tumors through surgical procedures.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(69, 69, 113, 1),
                      ),
                    ),
                    Text(
                      '2. Chemotherapy: Use of drugs to destroy cancer cells throughout the body.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(69, 69, 113, 1),

                      ),
                    ),
                    Text(
                      '3. Radiation Therapy: Targeted radiation to destroy cancer cells in a specific area.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(69, 69, 113, 1),

                      ),
                    ),
                    Text(
                      '4. Immunotherapy: Boosting the body\'s immune system to fight cancer cells.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(69, 69, 113, 1),

                      ),
                    ),
                    Text(
                      '5. Targeted Therapy: Drugs that target specific molecules involved in cancer growth.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(69, 69, 113, 1),

                      ),
                    ),
                    Text(
                      '6. Hormone Therapy: Blocking hormones that help certain cancers grow.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(69, 69, 113, 1),

                      ),
                    ),
                  ],
                ),
              ),
            ),
        Positioned(
          top: 700,
         left :20,
         right: 20,

         child:   Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(63, 59, 108, 1),
                    Color.fromRGBO(63, 59, 108, 1),
                  ],
                ),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,          MaterialPageRoute(builder: (context) => ChatApp()),        );

                },
                child: Text(
                  "Chat With Patient",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
        ),],
        ),
      ),
    );
  }
}