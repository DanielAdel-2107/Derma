import 'package:flutter/material.dart';
import 'package:derma/Both/Questions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(63, 59, 108, 1)),
      ),
      home: const Results(title: 'Results'),
    );
  }
}

class Results extends StatefulWidget {
  const Results({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.primary,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Questions(title: ''),
                  ),
                );
              },
              icon: const Icon(
                Icons.arrow_back_ios_outlined,
                size: 20,
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(4),
            ),
            width: 32,
            height: 32,
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            left: 67,
            top: 85,
            child: Container(
              width: 243,
              height: 3,
              decoration: BoxDecoration(
                color: Color(0x8A919191),
              ),
            ),
          ),


          Positioned(
            left: 66,
            top: 69,
            child: Container(
              width: 31,
              height: 31,
              decoration: BoxDecoration(
                color: Color(0xFF454571),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.check,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),

          Positioned(
            left: 209,
            top: 69,
            child: Container(
              width: 31,
              height: 31,
              decoration: BoxDecoration(
                color: Color(0xFF454571),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.check,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 138,
            top: 69,
            child: Container(
              width: 31,
              height: 31,
              decoration: BoxDecoration(
                color: Color(0xFF454571),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.check,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),


          Positioned(
            left: 279,
            top: 69,
            child: Container(
              width: 31,
              height: 31,
              decoration: BoxDecoration(
                color: Color(0xFF454571),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 291,
            top: 77,
            child: Text(
              '4',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontFamily: 'Raleway',
                height: 1.0,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 0.1,left: 155),
                child: Text(
                  'Results',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(63, 59, 108, 1),
                    fontFamily: 'poe',
                    height: 1.0,
                  ),
                ),
              ),

            ],
          ),
          Container(
            height: 38,
            width: 310,
            margin: EdgeInsets.only(top:645,left:38,right:38),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(63, 59, 108, 1),
                  Color.fromRGBO(63, 59, 108, 1),
                ],
              ),
            ),
            child: TextButton(
              onPressed: () {

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
        ],
      ),
    );
  }
}
