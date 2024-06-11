import 'package:derma/Doctors/root_page.dart';
import 'package:derma/Review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'BookAppointment.dart';
import 'Doctors/HomeDoctor.dart';

void main() {
  runApp(const DetailsDoctor());
}

class DetailsDoctor extends StatelessWidget {
  const DetailsDoctor({Key? key}) : super(key: key);

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
            Positioned(
              top: 230,
              left: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. Steller Kane',
                    style: TextStyle(
                      color: Color.fromRGBO(69, 69, 113, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 4.5,
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
                      SizedBox(width: 20),
                      SizedBox(
                        width: 8,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 17,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 75,
              left: 50,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(3.14),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RootPage()),
                    );
                  },
                  child: Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/next(2).png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 75,
              right: 0,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(3.14),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BookAppoientment()),
                    );
                  },
                  child: Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/next(1).png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 500,
              left: 45,
              right: 0,
              child: Container(
                width: 278,
                height: 69,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 76,
                        height: 69,
                        decoration: ShapeDecoration(
                          color: Color(0x51B4B4B4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 500,
              left: 155,
              right: 0,
              child: Container(
                width: 278,
                height: 69,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 76,
                        height: 69,
                        decoration: ShapeDecoration(
                          color: Color(0x51B4B4B4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 500,
              left: 265,
              right: 0,
              child: Container(
                width: 278,
                height: 69,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 76,
                        height: 69,
                        decoration: ShapeDecoration(
                          color: Color(0x51B4B4B4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 510,
              left: 0,
              right: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '120',
                        style: TextStyle(
                          color: Color(0xFF454571),
                          fontSize: 20,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Patients',
                        style: TextStyle(
                          color: Color(0xFF9F73AB),
                          fontSize: 10,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '4+',
                        style: TextStyle(
                          color: Color(0xFF454571),
                          fontSize: 20,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'EXP. Years',
                        style: TextStyle(
                          color: Color(0xFF9F73AB),
                          fontSize: 10,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '2140',
                        style: TextStyle(
                          color: Color(0xFF454571),
                          fontSize: 20,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Rating',
                        style: TextStyle(
                          color: Color(0xFF9F73AB),
                          fontSize: 10,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
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
                            image: AssetImage("assets/images/doctor.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 140,
              left: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 151,
                        height: 33,
                        child: Text(
                          'Average Cost >',
                          style: TextStyle(
                            color: Color(0xFF454571),
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      SizedBox(
                        width: 60,
                        height: 30,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '21',
                                style: TextStyle(
                                  color: Color(0xFF9F73AB),
                                  fontSize: 18,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: ' \$',
                                style: TextStyle(
                                  color: Color(0xFF9F73AB),
                                  fontSize: 16,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 151,
                        height: 33,
                        child: Text(
                          'Average Time >',
                          style: TextStyle(
                            color: Color(0xFF454571),
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 65,
                        height: 30,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '15',
                                style: TextStyle(
                                  color: Color(0xFF9F73AB),
                                  fontSize: 17,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: ' min',
                                style: TextStyle(
                                  color: Color(0xFF9F73AB),
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 210,
                    height: 33,
                    child: Text(
                      'Recent Patient’s Reviews',
                      style: TextStyle(
                        color: Color(0xFF9F73AB),
                        fontSize: 16,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  Container(
                    width: 320,
                    height: 80,
                    alignment: Alignment.centerLeft, // Aligning the container to the left
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0, // Positioning relative to the aligned container
                          top: 0,
                          child: Container(
                            width: 320,
                            height: 80,
                            decoration: ShapeDecoration(
                              color: Color(0x87E7E7E7),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Color(0xFF454571)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          top: 10,
                          child: SizedBox(
                            width: 159.82,
                            height: 23,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Jane Doe',
                                    style: TextStyle(
                                      color: Color(0xFF624F82),
                                      fontSize: 16,
                                      fontFamily: 'Radley',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ',
                                    style: TextStyle(
                                      color: Color(0xFF624F82),
                                      fontSize: 19,
                                      fontFamily: 'Radley',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '. ',
                                    style: TextStyle(
                                      color: Color(0xFF624F82),
                                      fontSize: 15,
                                      fontFamily: 'Radley',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '13/12/2023',
                                    style: TextStyle(
                                      color: Color(0xFF9F73AB),
                                      fontSize: 13,
                                      fontFamily: 'Ramaraja',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          top: 50,
                          child: SizedBox(
                            width: 310,
                            height: 40,
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Color(0xFF454571),
                                fontSize: 12,
                                fontFamily: 'Cormorant',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          left: 217.94,
                          top: 12,
                          child: Container(
                            width: 74.72,
                            height: 14.40,
                            child: RatingBar.builder(
                              initialRating: 3,
                              minRating: 0,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 14,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
,
                  SizedBox(height: 30),
                  Container(
                    width: 320,
                    height: 80,
                    child: Stack(
                      children: [

                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 320,
                            height: 80,
                            decoration: ShapeDecoration(
                              color: Color(0x87E7E7E7),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Color(0xFF454571)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          top: 10,
                          child: SizedBox(
                            width: 159.82,
                            height: 23,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'John Smith',
                                    style: TextStyle(
                                      color: Color(0xFF624F82),
                                      fontSize: 16,
                                      fontFamily: 'Radley',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ',
                                    style: TextStyle(
                                      color: Color(0xFF624F82),
                                      fontSize: 19,
                                      fontFamily: 'Radley',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '. ',
                                    style: TextStyle(
                                      color: Color(0xFF624F82),
                                      fontSize: 15,
                                      fontFamily: 'Radley',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '10/12/2023',
                                    style: TextStyle(
                                      color: Color(0xFF9F73AB),
                                      fontSize: 13,
                                      fontFamily: 'Ramaraja',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          top: 50,
                          child: SizedBox(
                            width: 310,
                            height: 40,
                            child: Text(
                              'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Color(0xFF454571),
                                fontSize: 12,
                                fontFamily: 'Cormorant',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 217.94,
                          top: 12,
                          child: Container(
                            width: 74.72,
                            height: 14.40,
                            child: RatingBar.builder(
                              initialRating: 4.5,
                              minRating: 0,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 14,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              right: 10,
              left: 10,
              bottom: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
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
                          context,
                          MaterialPageRoute(builder: (context) =>ReviewPage()),
                        );
                      },
                      child: Text(
                        "Add Review",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
