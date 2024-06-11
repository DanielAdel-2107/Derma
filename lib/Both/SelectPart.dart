import 'package:flutter/material.dart';
import 'package:body_part_selector/body_part_selector.dart';
import 'package:derma/Both/ScanPage.dart';
import 'package:derma/Both/TakeImages.dart';
import 'package:derma/Doctors/root_page.dart';

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
      home: const SelectPart(title: 'Body Part Selector'),
    );
  }
}

class SelectPart extends StatefulWidget {
  const SelectPart({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SelectPart> createState() => _SelectPartState();
}

class _SelectPartState extends State<SelectPart> {
  BodyParts _bodyParts = const BodyParts();

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
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => RootPage(),
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
            left: 138,
            top: 69,
            child: Container(
              width: 31,
              height: 31,
              decoration: BoxDecoration(
                color: Color(0xFFB9B9B9),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 79,
            top: 77,
            child: Text(
              '1',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontFamily: 'Raleway',
                height: 1.0,
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
            ),
          ),
          Positioned(
            left: 79,
            top: 77,
            child: Text(
              '1',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontFamily: 'Raleway',
                height: 1.0,
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
                color: Color(0xFFB9B9B9),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 150,
            top: 77,
            child: Text(
              '2',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF454571),
                fontFamily: 'Raleway',
                height: 1.0,
              ),
            ),
          ),
          Positioned(
            left: 221,
            top: 77,
            child: Text(
              '3',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF454571),
                fontFamily: 'Raleway',
                height: 1.0,
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
                color: Color(0xFFB9B9B9),
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
                color: Color(0xFF454571),
                fontFamily: 'Raleway',
                height: 1.0,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 0.1),
                child: Text(
                  'Select area',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(63, 59, 108, 1),
                    fontFamily: 'poe',
                    height: 1.0,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Transform.scale(
                    scale: 0.65,
                    child: BodyPartSelectorTurnable(
                      bodyParts: _bodyParts,
                      onSelectionUpdated: (p) => setState(() => _bodyParts = p),
                      labelData: const RotationStageLabelData(
                        front: 'Front',
                        left: 'Left',
                        right: 'Right',
                        back: 'Back',
                      ),
                    ),
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TakeImages(title: ''),
                  ),
                );
              },
              child: Text(
                "Continue",
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
