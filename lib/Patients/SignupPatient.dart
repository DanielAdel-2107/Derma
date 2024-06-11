import 'dart:convert';
import 'package:derma/Doctors/HomeDoctor.dart';
import 'package:derma/Patients/LoginPatient.dart';
import 'package:flutter/material.dart';
import 'package:derma/Patients/RootPatient.dart';
import '../Doctors/root_page.dart';
import '../Patients/HomePatient.dart';

import 'package:http/http.dart' as http;

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SignUpPatient(),
  ),
);

class SignUpPatient extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController nationalidcontroller = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  final TextEditingController confirmpasswordController = TextEditingController();

  Future<void> registertry(BuildContext context) async {
    final url = 'http://dermdiag.somee.com/api/Patients/Register';
    final Map<String, dynamic> data = {
      'name': fullnameController.text,
      'email': emailController.text,
      'password': passwordController.text,
      'phone': phoneController.text,
      'gender': genderController.text,
      'address': nationalidcontroller.text,
      'description': descriptionController.text,
    };

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(data),
      );

      if (response.statusCode == 200) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RootPage()),
        );
      } else {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Error'),
            content: Text('Failed to sign up. Please try again later.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      print('Error: $e');
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Failed to sign up. Please check your internet connection and try again.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            height: screenSize.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/BackGround .png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 20,
            child: Text(
              "DermDiag",
              style: TextStyle(
                color: Color.fromRGBO(69, 69, 113, 1),
                fontSize: screenSize.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 20,
            child: Container(
              width: screenSize.width * 0.15,
              height: screenSize.width * 0.125,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/LOGO.png'),
                ),
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: screenSize.height * 0.12),
                  Container(
                    margin: EdgeInsets.only(bottom: screenSize.height * 0.01),
                    child: Center(
                      child: Text(
                        "Create an account",
                        style: TextStyle(
                          color: Color(0xFF9F73AB),
                          fontSize: screenSize.width * 0.07,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
                    child: Column(
                      children: <Widget>[
                        Form(
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              buildTextFormField(
                                screenSize,
                                controller: fullnameController,
                                hintText: "Full Name",
                                icon: Icons.person,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your full name';
                                  }
                                  return null;
                                },
                              ),
                              buildTextFormField(
                                screenSize,
                                controller: emailController,
                                hintText: "Email",
                                icon: Icons.email,
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter an email';
                                  } else if (!value.contains('@gmail.com')) {
                                    return 'Please enter a valid Gmail address';
                                  }
                                  return null;
                                },
                              ),
                              buildTextFormField(
                                screenSize,
                                controller: phoneController,
                                hintText: "Phone Number",
                                icon: Icons.phone,
                                keyboardType: TextInputType.phone,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your phone number';
                                  } else if (!RegExp(r'^\d{11}$').hasMatch(value)) {
                                    return 'Phone number must contain 11 digits';
                                  }
                                  return null;
                                },
                              ),
                              buildTextFormField(
                                screenSize,
                                controller: descriptionController,
                                hintText: "Description",
                                icon: Icons.description,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your description';
                                  }
                                  return null;
                                },
                              ),
                              buildTextFormField(
                                screenSize,
                                controller: genderController,
                                hintText: "Gender",
                                icon: Icons.people,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your gender';
                                  }
                                  return null;
                                },
                              ),
                              buildTextFormField(
                                screenSize,
                                controller: nationalidcontroller,
                                hintText: "National Id",
                                icon: Icons.credit_card,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your location';
                                  }
                                  return null;
                                },
                              ),
                              buildTextFormField(
                                screenSize,
                                controller: passwordController,
                                hintText: "Password",
                                icon: Icons.lock,
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter a password';
                                  } else if (!RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d.*\d)(?=.*[!@#$%^&*()\-_=+{};:,<.>]).{8,}$').hasMatch(value)) {
                                    return 'Password must contain at least 8 characters, one uppercase letter, at least two digits, and at least one special character';
                                  }
                                  return null;
                                },
                              ),
                              buildTextFormField(
                                screenSize,
                                controller: confirmpasswordController,
                                hintText: "Confirm Password",
                                icon: Icons.lock,
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please confirm your password';
                                  } else if (value != passwordController.text) {
                                    return 'Passwords do not match';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.01),
                        Container(
                          height: screenSize.height * 0.06,
                          width: screenSize.width * 0.8,
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
                              if (_formKey.currentState != null && _formKey.currentState!.validate()) {
                                registertry(context);
                              }
                            },
                            child: Text(
                              "SIGNUP",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: screenSize.width * 0.04,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.00),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                color: Color.fromRGBO(63, 59, 108, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: screenSize.width * 0.04,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => LoginPatient()),
                                );
                              },
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                  color: Color(0xFF9F73AB),
                                  fontSize: screenSize.width * 0.05,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextFormField(
      Size screenSize, {
        required TextEditingController controller,
        required String hintText,
        required IconData icon,
        TextInputType keyboardType = TextInputType.text,
        bool obscureText = false,
        required String? Function(String?) validator,
      }) {
    return Container(
      margin: EdgeInsets.only(bottom: screenSize.height * 0.02),
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.03),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xFF9F73AB)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(143, 148, 251, .2),
            blurRadius: 20.0,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Color.fromRGBO(98, 79, 130, 1)),
          hintText: hintText,
          hintStyle: TextStyle(color: Color.fromRGBO(98, 79, 130, 1)),
          border: InputBorder.none,
        ),
        keyboardType: keyboardType,
        obscureText: obscureText,
        validator: validator,
      ),
    );
  }
}