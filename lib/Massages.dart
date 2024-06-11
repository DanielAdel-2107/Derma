import 'package:derma/Doctors/HomeDoctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'ChatPage.dart';
import 'Doctors/root_page.dart';

class MassagesPage extends StatefulWidget {
  @override
  _MassagesPageState createState() => _MassagesPageState();
}

class _MassagesPageState extends State<MassagesPage> {
  List<String> items = List.generate(10, (index) => "Doctor $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 16.0),
        child:AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RootPage()),);
            },
            icon: Icon(Icons.arrow_back, color: Colors.white),
          ),
          title: Text(
            "Messages",
            style: TextStyle(
              fontFamily: 'poe',
              color: Colors.white,
            ),
          ),
          backgroundColor: Color(0xFF454571),
          iconTheme: const IconThemeData(),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.message, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((item) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>ChatApp()),);
              },
              child: Card(
                margin: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            'assets/images/patient.jpg',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nadia Ahmed",
                            style: TextStyle(
                              fontSize: 16.0,
                              color:Color(0xFF454571),
                              fontFamily: 'poe',
                            ),
                          ),
                          // Additional message details can be added here
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
