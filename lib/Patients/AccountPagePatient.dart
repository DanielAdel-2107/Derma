import 'package:flutter/material.dart';

import 'package:derma/Patients/EditproPatient.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'LoginPatient.dart';

void main() {
  runApp(AccountPagePatient());
}

class AccountPagePatient extends StatelessWidget {
  final Local _localStorage2 = Local(FlutterSecureStorage());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(69, 69, 113, 1),
          title: Text(
            'My Account',
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage('assets/images/doctor.png'),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Nourhan Ebrahim',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(69, 69, 113, 1)),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditProfilePatient(localStorage2: _localStorage2)),
                    );
                  },
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(BorderSide(color: Color.fromRGBO(69, 69, 113, 1))),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(Color.fromRGBO(69, 69, 113, 1)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.edit, color: Colors.white),
                      SizedBox(width: 8),
                      Text('Edit Profile', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  side: MaterialStateProperty.all(BorderSide(color: Color.fromRGBO(69, 69, 113, 1))),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.contacts, color: Color.fromRGBO(69, 69, 113, 1)),
                    SizedBox(width: 8),
                    Text('E-call contacts', style: TextStyle(color: Color.fromRGBO(69, 69, 113, 1))),
                  ],
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  side: MaterialStateProperty.all(BorderSide(color: Color.fromRGBO(69, 69, 113, 1))),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete, color: Color.fromRGBO(69, 69, 113, 1)),
                    SizedBox(width: 8),
                    Text('Delete Account', style: TextStyle(color: Color.fromRGBO(69, 69, 113, 1))),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  side: MaterialStateProperty.all(BorderSide(color: Color.fromRGBO(69, 69, 113, 1))),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),

                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.history,color: Color.fromRGBO(69, 69, 113, 1)),
                    SizedBox(width: 8),
                    Text('Patient History', style: TextStyle(color: Color.fromRGBO(69, 69, 113, 1),),
                    )],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  side: MaterialStateProperty.all(BorderSide(color: Color.fromRGBO(69, 69, 113, 1))),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.language, color: Color.fromRGBO(69, 69, 113, 1)),
                    SizedBox(width: 8),
                    Text('Languages', style: TextStyle(color: Color.fromRGBO(69, 69, 113, 1))),
                  ],
                ),
              ),
              SizedBox(height: 45),
              Center(
                child:ElevatedButton(
                  onPressed: () async {

                    await _localStorage2.deleteAll();

                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPatient()),
                          (Route<dynamic> route) => false,
                    );
                  },
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(BorderSide(color: Color.fromRGBO(69, 69, 113, 1))),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all( Color.fromRGBO(69, 69, 113, 1)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.logout, color: Colors.white),
                      SizedBox(width: 8),
                      Text('Logout', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
