import 'package:flutter/material.dart';

import 'BookAppointment.dart';
import 'Patients/CardForm.dart';

void main() {
  runApp(const CheckoutPage());
}

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        body: ListView(
          children: [
            ResponsiveLayout(
              child: Checkout(),
            ),
          ],
        ),
      ),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  final Widget child;

  const ResponsiveLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return _buildSmallLayout();
        } else {
          return _buildLargeLayout();
        }
      },
    );
  }

  Widget _buildSmallLayout() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: child,
      ),
    );
  }

  Widget _buildLargeLayout() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(16.0),
            child: child,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.green,
            child: Placeholder(),
          ),
        ),
      ],
    );
  }
}


class Checkout extends StatelessWidget {
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
              Positioned(
                top: 60,
                left: 40,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BookAppoientment()),        );      },
                    child: Container(
                      width: 34,        height: 34,        decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/next(2).png"),            fit: BoxFit.fill,          ),        ),      ),    ),  ),),
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
                        left: 80,
                        top: 0,
                        bottom: 25,
                        child: SizedBox(
                          // width: 156,
                          // height: 21,
                          child:TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,  MaterialPageRoute(builder: (context) => MySample()),);
                            },
                            child: Text(
                              'Confirm',
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
                left: 137,
                top: 30,
                child: SizedBox(
                  width: 101,
                  height: 33,
                  child: Text(
                    'Checkout',
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
                left: 44,
                top: 283,
                child: Container(
                  width: 260,
                  height: 31,
                  decoration: ShapeDecoration(
                    color: Color(0x8ED9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 57,
                top: 289,
                child: SizedBox(
                  width: 235,
                  height: 60,
                  child: Text(
                    'Appiontment  Information',
                    style: TextStyle(
                      color: Color(0xFF454571),
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 87,
                top: 473,
                child: SizedBox(
                  width: 42,
                  height: 21,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '21',
                          style: TextStyle(
                            color: Color(0xFF454571),
                            fontSize: 18,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: Color(0xFF454571),
                            fontSize: 14,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '\$',
                          style: TextStyle(
                            color: Color(0xFF454571),
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
              ),
              Positioned(
                left: 53,
                top: 476,
                child: Container(
                  width: 23,
                  height: 23,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/dolller.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 55,
                top: 436,
                child: Container(
                  width: 19,
                  height: 19,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/clock.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 51,
                top: 387,
                child: Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:AssetImage("assets/images/docde.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 55,
                top: 514,
                child: Container(
                  width: 22,
                  height: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/creditpng.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 55,
                top: 345,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:  AssetImage("assets/images/user.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 88,
                top: 346,
                child: SizedBox(
                  width: 199,
                  height: 17,
                  child: Text(
                    'Rana Mahmoud',
                    style: TextStyle(
                      color: Color(0xFF454571),
                      fontSize: 15,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w800,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 88,
                top: 393,
                child: SizedBox(
                  width: 199,
                  height: 17,
                  child: Text(
                    'Dr. Steller Kane',
                    style: TextStyle(
                      color: Color(0xFF454571),
                      fontSize: 15,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w800,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 85,
                top: 436,
                child: SizedBox(
                  width: 199,
                  height: 17,
                  child: Text(
                    'Saturday - Sep 23  8:00 PM',
                    style: TextStyle(
                      color: Color(0xFF454571),
                      fontSize: 15,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w800,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 297,
                top: 438,
                child: SizedBox(
                  width: 62,
                  height:209,

                  child: Text(
                    'Change',
                    style: TextStyle(
                      color: Color(0xFF9F73AB),
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 89,
                top: 509,
                child: Container(
                  width: 76,
                  height: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/paypal.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 75,
                child: Container(
                  width: 252,
                  height: 172,
                  child: Stack(
                    children: [
                      Positioned(
                        left: -3,
                        top: 0,
                        child: Container(
                          width: 252,
                          height: 31,
                          decoration: ShapeDecoration(
                            color: Color(0x8ED9D9D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 5,
                        child: SizedBox(
                          width: 235,
                          height: 60,
                          child: Text(
                            'Choose payment option ',
                            style: TextStyle(
                              color: Color(0xFF454571),
                              fontSize: 16,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 70,
                        left:10,
                        child:
                      Container(
                        width: 19,
                        height: 19,
                        decoration: ShapeDecoration(
                          color: Color(0xFFCCCACA),
                          shape: CircleBorder(),
                        ),
                      ),
                ),
                      Positioned(
                        top: 105,
                        left:10,
                        child:
                        Container(
                          width: 19,
                          height: 19,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: CircleBorder(
                              side: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 140,
                        left:10,
                        child:
                        Container(
                          width: 19,
                          height: 19,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: CircleBorder(
                              side: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 42,
                        top: 103,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/pay.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 39,
                        top: 132,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/card.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 87,
                        top: 132,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/visa.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 42,
                        top: 57,
                        child: Container(
                          width: 76,
                          height: 45,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/paypal.png"),
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
      ],
    );
  }
}