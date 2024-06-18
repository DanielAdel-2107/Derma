import 'package:derma/DetailsDoctor.dart';
import 'package:flutter/material.dart';

import 'Doctors/AccountPageDoctor.dart';
import 'checkout.dart';

void main() {

  runApp(BookAppoientment());
}
// Clone

class BookAppoientment extends StatelessWidget {
   BookAppoientment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:  Colors.white,
      ),
      home: Scaffold(
        body: ListView(children: [
          Book(),
        ]),
      ),
    );
  }
}

class Book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 667,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
          //   Positioned(
          //   top: 15,
          //   left: 15,
          //   child: InkWell(
          //     onTap: () {},
          //     child: Image.asset(
          //       'assets/images/menu_icon.png',
          //       width: 40,
          //       height: 40,
          //       color: Color.fromRGBO(69, 69, 113, 1),
          //     ),
          //   ),
          // ),
              Positioned(
                top: 50,
                left: 40,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsDoctor()),        );      },
                    child: Container(
                      width: 34,        height: 34,        decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/next(2).png"),            fit: BoxFit.fill,          ),        ),      ),    ),  ),),

              Positioned(
                left: 91,
                top: 39,
                child: Container(
                  width: 188,
                  height: 225,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 19,
                        top: 147,
                        child: SizedBox(
                          width: 151,
                          height: 33,
                          child: Text(
                            'Dr. Steller Kane',
                            style: TextStyle(
                              color: Color(0xFF454571),
                              fontSize: 20,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 27,
                        top: 0,
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
                        left: 0,
                        top: 188,
                        child: Container(
                          width: 188,
                          height: 37,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 153,
                                top: 2,
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/location.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 2,
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/chat.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 77,
                                top: 0,
                                child: Container(
                                  width: 37,
                                  height: 37,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/vedio.png"),
                                      fit: BoxFit.fill,
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
              Positioned(
                left: 33,
                top: 300,
                child: SizedBox(
                  width: 151,
                  height: 33,
                  child: Text(
                    'About',
                    style: TextStyle(
                      color: Color(0xFF9F73AB),
                      fontSize: 17,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w800,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 220,
                top: 301,
                child: SizedBox(
                  width: 182,
                  height: 33,
                  child: TextButton(
                    onPressed: () {
    Navigator.push(
    context,          MaterialPageRoute(builder: (context) => AccountPageDoctor()),        );
  },
                    child: Text(
                      'See Doctor’s Profile',
                      style: TextStyle(
                        color: Color(0xFF454571),
                        fontSize: 12,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w800,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 35,
                top: 331,
                child: SizedBox(
                  width: 298,
                  height: 72,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFF454571),
                      fontSize: 14,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 351,
                top: 52,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,          MaterialPageRoute(builder: (context) => Checkout()),        );      },      child: Container(
                  width: 34,        height: 34,        decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/next(1).png"),            fit: BoxFit.fill,          ),        ),      ),    ),  ),
              ),
              Positioned(
                left: 31,
                top: 422,
                child: Container(
                  width: 369.09,
                  height: 140,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 197,
                        top: 0,
                        child: Container(
                          width: 113,
                          height: 21,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 96,
                                  height: 21,
                                  child: Text(
                                    'February 2024',
                                    style: TextStyle(
                                      color: Color(0xFF454571),
                                      fontSize: 13,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 96,
                                top: 0,
                                child: Container(
                                  width: 17,
                                  height: 17,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/17x17"),
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
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 151,
                          height: 33,
                          child: Text(
                            'Schedules',
                            style: TextStyle(
                              color: Color(0xFF9F73AB),
                              fontSize: 17,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w800,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 1,
                        top: 39.26,
                        child: Container(
                          width: 51,
                          height: 59.74,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 51,
                                  height: 59.74,
                                  decoration: ShapeDecoration(
                                    color: Color(0x3DB4B4B4),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 11,
                                top: 9.69,
                                child: SizedBox(
                                  width: 29,
                                  height: 16.15,
                                  child: Text(
                                    'Mon',
                                    style: TextStyle(
                                      color: Color(0xFF454571),
                                      fontSize: 12,
                                      fontFamily: 'Candal',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 18,
                                top: 35.52,
                                child: SizedBox(
                                  width: 29,
                                  height: 16.15,
                                  child: Text(
                                    '11',
                                    style: TextStyle(
                                      color: Color(0xFF454571),
                                      fontSize: 12,
                                      fontFamily: 'Candal',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 64,
                        top: 39.26,
                        child: Container(
                          width: 51,
                          height: 59.74,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 51,
                                  height: 59.74,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEDEDED),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 15,
                                top: 9.69,
                                child: SizedBox(
                                  width: 29,
                                  height: 16.15,
                                  child: Text(
                                    'Tue',
                                    style: TextStyle(
                                      color: Color(0xFF454571),
                                      fontSize: 12,
                                      fontFamily: 'Candal',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 18,
                                top: 35.52,
                                child: SizedBox(
                                  width: 29,
                                  height: 16.15,
                                  child: Text(
                                    '12',
                                    style: TextStyle(
                                      color: Color(0xFF454571),
                                      fontSize: 12,
                                      fontFamily: 'Candal',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 127,
                        top: 39.26,
                        child: Container(
                          width: 51,
                          height: 59.74,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 51,
                                  height: 59.74,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEDEDED),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 12,
                                top: 9.69,
                                child: SizedBox(
                                  width: 29,
                                  height: 16.15,
                                  child: Text(
                                    'Wen',
                                    style: TextStyle(
                                      color: Color(0xFF454571),
                                      fontSize: 12,
                                      fontFamily: 'Candal',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 18,
                                top: 35.52,
                                child: SizedBox(
                                  width: 29,
                                  height: 16.15,
                                  child: Text(
                                    '13',
                                    style: TextStyle(
                                      color: Color(0xFF454571),
                                      fontSize: 12,
                                      fontFamily: 'Candal',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 190,
                        top: 39.26,
                        child: Container(
                          width: 51,
                          height: 59.74,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 51,
                                  height: 59.74,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF454571),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 14,
                                top: 9.69,
                                child: SizedBox(
                                  width: 29,
                                  height: 16.15,
                                  child: Text(
                                    'Thu',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Candal',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 18,
                                top: 35.52,
                                child: SizedBox(
                                  width: 29,
                                  height: 16.15,
                                  child: Text(
                                    '14',
                                    style: TextStyle(
                                      color: Color(0xFFE8EEF2),
                                      fontSize: 12,
                                      fontFamily: 'Candal',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 253,
                        top: 39.26,
                        child: Container(
                          width: 51,
                          height: 59.74,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 51,
                                  height: 59.74,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEDEDED),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 17,
                                top: 9.69,
                                child: SizedBox(
                                  width: 29,
                                  height: 16.15,
                                  child: Text(
                                    'Fri',
                                    style: TextStyle(
                                      color: Color(0xFF454571),
                                      fontSize: 12,
                                      fontFamily: 'Candal',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 18,
                                top: 35.52,
                                child: SizedBox(
                                  width: 29,
                                  height: 16.15,
                                  child: Text(
                                    '15',
                                    style: TextStyle(
                                      color: Color(0xFF454571),
                                      fontSize: 12,
                                      fontFamily: 'Candal',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 316,
                        top: 39.26,
                        child: Container(
                          width: 51,
                          height: 59.74,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 51,
                                  height: 59.74,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEDEDED),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 15,
                                top: 9.69,
                                child: SizedBox(
                                  width: 29,
                                  height: 16.15,
                                  child: Text(
                                    'Sat',
                                    style: TextStyle(
                                      color: Color(0xFF454571),
                                      fontSize: 12,
                                      fontFamily: 'Candal',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 18,
                                top: 35.52,
                                child: SizedBox(
                                  width: 29,
                                  height: 16.15,
                                  child: Text(
                                    '16',
                                    style: TextStyle(
                                      color: Color(0xFF454571),
                                      fontSize: 12,
                                      fontFamily: 'Candal',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 111,
                        child: Container(
                          width: 87.09,
                          height: 29,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 86.02,
                                  height: 29,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEDEDED),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 17,
                                top: 7,
                                child: SizedBox(
                                  // width: 70.09,
                                  // height: 7.91,
                                  child: Text(
                                    '5:00 pm',
                                    style: TextStyle(
                                      color: Color(0xFF454571),
                                      fontSize: 13,
                                      fontFamily: 'Candal',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
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
              Positioned(
                left: 70,
                top: 620,
                child: Container(
                  width: 236,
                  height: 60,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,

                        child: Container(
                          width: 236,
                          height: 35,
                          decoration: ShapeDecoration(
                            color: Color(0xFF454571),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                        ),
                      ),
                     // SizedBox(height: 300),
                      Positioned(
                        left: 40,
                        top: 0,
                        bottom: 25,
                        child: SizedBox(
                          // width: 156,
                          // height: 21,
                          child:TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,  MaterialPageRoute(builder: (context) => CheckoutPage()),);
                          },
                          child: Text(
                            'Book an appointment',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      ),],
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 535,
                child: Container(
                  width: 276.09,
                  height: 29,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 86.02,
                          height: 29,
                          decoration: ShapeDecoration(
                            color: Color(0xFF454571),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFF454571)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 17,
                        top: 7,
                        child: SizedBox(
                          // width: 70.09,
                          // height: 7.91,
                          child: Text(
                            '11:00 am',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Candal',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 94,
                        top: 0,
                        child: Container(
                          width: 86.02,
                          height: 29,
                          decoration: ShapeDecoration(
                            color: Color(0xFFEDEDED),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 112,
                        top: 7,
                        child: SizedBox(
                          // width: 70.09,
                          // height: 7.91,
                          child: Text(
                            '11:15 am',
                            style: TextStyle(
                              color: Color(0xFF454571),
                              fontSize: 13,
                              fontFamily: 'Candal',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 188,
                        top: 0,
                        child: Container(
                          width: 86.02,
                          height: 29,
                          decoration: ShapeDecoration(
                            color: Color(0xFFEDEDED),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 206,
                        top: 7,
                        child: SizedBox(
                          // width: 70.09,
                          // height: 7.91,
                          child: Text(
                            '02:30 pm',
                            style: TextStyle(
                              color: Color(0xFF454571),
                              fontSize: 13,
                              fontFamily: 'Candal',
                              fontWeight: FontWeight.w400,
                              height: 0,
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
      ],
    );
  }
}