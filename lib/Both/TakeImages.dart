import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'Questions.dart';
import 'SelectPart.dart';

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
      home: const TakeImages(title: 'Image'),
    );
  }
}

class TakeImages extends StatefulWidget {
  const TakeImages({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TakeImages> createState() => _TakeImagesState();
}

class _TakeImagesState extends State<TakeImages> {
  List<File?> images = List.filled(3, null);

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
                    builder: (_) => SelectPart(title: ''),
                  ),
                );              },
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
                color: Color(0xFFB9B9B9),
                shape: BoxShape.circle,
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
            ),
          ),
          Positioned(
            left: 150,
            top: 77,
            child: Text(
              '2',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
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
                padding: const EdgeInsets.only(bottom: 0.1, left: 140),
                child: Text(
                  'Take Photo',
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
          Positioned(
            left: 78,
            top: 394,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    _pickImage(ImageSource.camera);
                  },
                  child: Container(
                    width: 68,
                    height: 68,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF454571),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 7,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/camera.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Take',
                  style: TextStyle(
                    color: Color(0xFF9F73AB),
                    fontFamily: 'Raleway',
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 222,
            top: 394,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    _pickImage(ImageSource.gallery);
                  },
                  child: Container(
                    width: 68,
                    height: 68,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF454571),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 7,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(1),
                          child: Image.asset(
                            'assets/images/upload.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Upload',
                  style: TextStyle(
                    color: Color(0xFF9F73AB),
                    fontFamily: 'Raleway',
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 312,
            height: 15,
            margin: EdgeInsets.only(left: 55, top: 174),
            child: Text(
              'Submit 3 clear images for dermatology scanning',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF9F73AB),
                fontFamily: 'Raleway',
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            height: 38,
            width: 310,
            margin: EdgeInsets.only(top: 645, left: 38, right: 38),
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
              onPressed: images.every((image) => image != null) ? () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Questions(title: ''),
                  ),
                );
              } :  () {
          showDialog(
          context: context,
          builder: (BuildContext context) {
          return AlertDialog(
          title: Text("OoOps!!"),
          content: Text("Please enter 3 images to continue "),
          actions: <Widget>[
          TextButton(
          onPressed: () {
          Navigator.of(context).pop();
          },
          child: Text("Ok"),
          ),
          ],
          );
          },
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

          for (int i = 0; i < images.length; i++)
            Positioned(
              left: 29 + i * 114.0,
              top: 230,
              child: Container(
                width: 94,
                height: 94,
                decoration: BoxDecoration(
                  color: Color(0xFFC2D9D9D9),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF454571),
                  ),
                ),
                child: images[i] != null
                    ? ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.file(
                    images[i]!,
                    fit: BoxFit.cover,
                  ),
                )
                    : null,
              ),
            ),
        ],
      ),
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    final XFile? returnImage = await ImagePicker().pickImage(source: source);
    if (returnImage == null) return;

    if (images.contains(null)) {
      final int index = images.indexWhere((image) => image == null);
      setState(() {
        images[index] = File(returnImage.path);
      });
    }
  }
}
