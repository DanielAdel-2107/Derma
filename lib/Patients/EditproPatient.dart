import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'AccountPagePatient.dart';
import 'LoginPatient.dart';

class EditProfilePatient extends StatefulWidget {
  final Local localStorage2;
  final storage = FlutterSecureStorage();
  EditProfilePatient({required this.localStorage2});

  @override
  _EditProfilePatientState createState() => _EditProfilePatientState();
}

class _EditProfilePatientState extends State<EditProfilePatient> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController phoneController;
  late TextEditingController addressController;
  late TextEditingController descriptionController;
  XFile? _image;
  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    phoneController = TextEditingController();
    addressController = TextEditingController();
    descriptionController = TextEditingController();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    Map<String, String> profileData = await widget.localStorage2.getProfileDataPatient();
    setState(() {
      nameController.text = profileData['name'] ?? '';
      emailController.text = profileData['email'] ?? '';
      passwordController.text = profileData['password'] ?? '';
      phoneController.text = profileData['phone'] ?? '';
      addressController.text = profileData['address'] ?? '';
      descriptionController.text = profileData['description'] ?? '';
      if (profileData['image'] != null) {
        _image = XFile(profileData['image']!);
      }
    });
  }

  Future<void> selectProfileImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = pickedFile;
    });
  }

  Future<void> saveProfile() async {
    String? patientId = await widget.localStorage2.getLoginIdPatient();
    final url = Uri.parse('http://dermdiag.somee.com/api/Patients/EditProfilePatient?patientId=$patientId');
    final response = await http.put(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json;charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'name': nameController.text,
        'email': emailController.text,
        'password': passwordController.text,
        'phone': phoneController.text,
        'address': addressController.text,
       // 'fees': "0",
       // 'description': descriptionController.text,
        'image': _image != null ? base64Encode(await File(_image!.path).readAsBytes()) : '',
      }),
    );
     print("***********************");
     print(response.statusCode);
     print(response.body);
    if (response.statusCode == 200) {
      print('Profile updated successfully');
      await widget.localStorage2.saveProfileDataPatient({
        'name': nameController.text,
        'email': emailController.text,
        'password': passwordController.text,
        'phone': phoneController.text,
        'address': addressController.text,
        'description': descriptionController.text,
        'image': _image != null ? _image!.path : '',
      });


      Map<String, String> storedData = await widget.localStorage2.getProfileDataPatient();
      print('Stored Data: $storedData');

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AccountPagePatient()),
      );
    } else {
      print('Failed to update profile. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(69, 69, 113, 1),
        title: Text(
          'Edit Profile',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccountPagePatient()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 70.0,
                    backgroundImage: _image != null ? FileImage(File(_image!.path)) : null,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      icon: Icon(Icons.camera_alt),
                      onPressed: selectProfileImage,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: 'Phone',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: addressController,
              decoration: InputDecoration(
                labelText: 'Address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: descriptionController,
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel', style: TextStyle(color: Colors.white)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color.fromRGBO(69, 69, 113, 1)),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: saveProfile,
                  child: Text('Save', style: TextStyle(color: Colors.white)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color.fromRGBO(69, 69, 113, 1)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
