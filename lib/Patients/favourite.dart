import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'CardForm.dart';

class FavouritePage extends StatefulWidget {
  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  List<String> items = List.generate(10, (index) => "Dr/Seif Ali Mohamed");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Text(
                "Favorite Doctors",
                style: TextStyle(
                  fontFamily: 'poe',
                  color: Color(0xFF454571),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(),
        automaticallyImplyLeading: false,
        toolbarHeight: 35,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (int index = 0; index < items.length; index++)
              DoctorCard(
                doctorName: items[index],
                onDelete: () {
                  setState(() {
                    items.removeAt(index);
                  });
                },
              ),
          ],
        ),
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String doctorName;
  final VoidCallback onDelete;

  DoctorCard({
    required this.doctorName,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/images/doctor.png'),
            ),
            SizedBox(width: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  doctorName,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontFamily: 'poe',
                  ),
                ),
                Row(
                  children: [
                    RatingBar.builder(

                      initialRating: 4.5,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 12,
                      itemPadding: EdgeInsets.only(top: 4),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(height: 22,width: 16,),
                    Positioned(
                      top: 25,
                      child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 15,

                    ) ,),

                  ],
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => MySample()),
                    // );
                  },
                  child: Container(
                    width: 130,
                    height: 24,
                    margin: EdgeInsets.only(top: 10),

                    decoration: BoxDecoration(
                      color: Color(0xFF9F73AB),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Details',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.black26,
              iconSize: 25,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Confirmation"),
                      content: Text(
                          "Are you sure you want to delete $doctorName from your favorites list?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            onDelete();
                          },
                          child: Text("Confirm"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Cancel"),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: FavouritePage(),
  ));
}
