// import 'package:flutter/material.dart';
// import 'package:ibtsam/ui/Results.dart';
// import 'package:ibtsam/ui/TakeImages.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';
//
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         useMaterial3: true,
//         colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(63, 59, 108, 1)),
//       ),
//       home: const Questions(title: 'questions'),
//     );
//   }
// }
//
// class Questions extends StatefulWidget {
//   const Questions({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   State<Questions> createState() => _QuestionsState();
// }
//
// class _QuestionsState extends State<Questions> {
//   final List<String> items = [
//     '1 Day',
//     '2 Days',
//     '3 Days',
//     '4 Days',
//     '5 Days',
//     '6 Days',
//     '7 Days',
//     '8 Days',
//     '9 Days',
//     '10 Days',
//
//   ];
//   final List<String> items2 = [
//     '1 Day',
//     '2 Days',
//     '3 Days',
//     '4 Days',
//     '5 Days',
//     '6 Days',
//     '7 Days',
//     '8 Days',
//     '9 Days',
//     '10 Days',
//
//   ];
//   String? selectedValue;
//   bool isChecked1 = true;
//   bool isChecked2 = true;
//   bool isChecked3 = true;
//   bool isChecked4 = true;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         actions: [
//           Container(
//             margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Theme.of(context).colorScheme.primary,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.5),
//                   spreadRadius: 2,
//                   blurRadius: 7,
//                   offset: const Offset(0, 3), // changes position of shadow
//                 ),
//               ],
//             ),
//             child: IconButton(
//               onPressed: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                     builder: (_) => TakeImages(title: ''),
//                   ),
//                 );
//               },
//               icon: const Icon(
//                 Icons.arrow_back_ios_outlined,
//                 size: 20,
//                 color: Colors.white,
//               ),
//               padding: const EdgeInsets.all(4),
//             ),
//             width: 32,
//             height: 32,
//           ),
//         ],
//       ),
//       body: Stack(
//         children: [
//           Center(
//             child: Positioned(
//               left: 67,
//               top: 85,
//               child: Container(
//                 width: 243,
//                 height: 3,
//                 decoration: BoxDecoration(
//                   color: Color(0x8A919191),
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 66,
//               top: 69,
//               child: Container(
//                 width: 31,
//                 height: 31,
//                 decoration: BoxDecoration(
//                   color: Color(0xFF454571),
//                   shape: BoxShape.circle,
//                 ),
//                 child: Icon(
//                   Icons.check,
//                   size: 20,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 209,
//               top: 69,
//               child: Container(
//                 width: 31,
//                 height: 31,
//                 decoration: BoxDecoration(
//                   color: Color(0xFF454571),
//                   shape: BoxShape.circle,
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 138,
//               top: 69,
//               child: Container(
//                 width: 31,
//                 height: 31,
//                 decoration: BoxDecoration(
//                   color: Color(0xFF454571),
//                   shape: BoxShape.circle,
//                 ),
//                 child: Icon(
//                   Icons.check,
//                   size: 20,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 221,
//               top: 77,
//               child: Text(
//                 '3',
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: Colors.white,
//                   fontFamily: 'Raleway',
//                   height: 1.0,
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 279,
//               top: 69,
//               child: Container(
//                 width: 31,
//                 height: 31,
//                 decoration: BoxDecoration(
//                   color: Color(0xFFB9B9B9),
//                   shape: BoxShape.circle,
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 291,
//               top: 77,
//               child: Text(
//                 '4',
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: Color(0xFF454571),
//                   fontFamily: 'Raleway',
//                   height: 1.0,
//                 ),
//               ),
//             ),
//             Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 0.1, left: 140),
//                   child: Text(
//                     'Symptoms',
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Color.fromRGBO(63, 59, 108, 1),
//                       fontFamily: 'poe',
//                       height: 1.0,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               height: 38,
//               width: 310,
//               margin: EdgeInsets.only(top: 645, left: 38, right: 38),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 gradient: LinearGradient(
//                   colors: [
//                     Color.fromRGBO(63, 59, 108, 1),
//                     Color.fromRGBO(63, 59, 108, 1),
//                   ],
//                 ),
//               ),
//               child: TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => Results(title: "nn")),
//                   );
//                 },
//                 child: Text(
//                   "Get result",
//                   style: TextStyle(
//                     fontSize: 18,
//                     color: Colors.white,
//                     fontFamily: 'poe',
//                     height: 1.0,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               width: 251,
//               height: 15,
//               margin: EdgeInsets.fromLTRB(29, 149, 0, 0),
//               child: Text(
//                 "Please, describe your symptoms",
//                 style: TextStyle(
//                   fontSize: 15,
//                   color: Color(0xFF9F73AB),
//                   fontFamily: 'Raleway',
//                 ),
//                 textAlign: TextAlign.start,
//               ),
//             ),
//             Container(
//               width: 302,
//               height: 15,
//               margin: EdgeInsets.fromLTRB(29, 199, 0, 0),
//               child: Text(
//                 "How long you have had this skin condition?",
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: Color(0xFF454571),
//                   fontFamily: 'Raleway',
//                 ),
//                 textAlign: TextAlign.start,
//               ),
//             ),
//             Container(
//               width: 315,
//               height: 40,
//               margin: EdgeInsets.fromLTRB(26, 227, 0, 0),
//               decoration: BoxDecoration(
//                 color:Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 2,
//                     blurRadius: 4,
//                     offset: Offset(0, 4),
//                   ),
//                 ],
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(5),
//                 child: DropdownButtonHideUnderline(
//                   child: DropdownButton2<String>(
//                     isExpanded: true,
//                     hint: const Text(
//                       'Days',
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xB8454571),
//                       ),
//                     ),
//                     items: items.map((String item) {
//                       return DropdownMenuItem<String>(
//                         value: item,
//                         child: Text(
//                           item,
//                           style: const TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Color(0xB8454571),
//                           ),
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       );
//                     }).toList(),
//                     value: selectedValue,
//                     onChanged: (String? value) {
//                       setState(() {
//                         selectedValue = value;
//                       });
//                     },
//                     buttonStyleData: ButtonStyleData(
//                       height: 50,
//                       padding: const EdgeInsets.only(left: 6, right: 14),
//                     ),
//                     iconStyleData: const IconStyleData(
//                       icon: Icon(
//                         Icons.arrow_forward_ios_outlined,
//                       ),
//                       iconSize: 14,
//                       iconEnabledColor: Color(0xB8454571),
//                       iconDisabledColor: Color(0xB8454571),
//                     ),
//                     dropdownStyleData: DropdownStyleData(
//                       maxHeight: 200,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(14),
//                         color: Colors.white,
//                       ),
//                       offset: const Offset(1, -10),
//                       scrollbarTheme: ScrollbarThemeData(
//                         radius: const Radius.circular(40),
//                         thickness: MaterialStateProperty.all<double>(6),
//                         thumbVisibility: MaterialStateProperty.all<bool>(true),
//                       ),
//                     ),
//                     menuItemStyleData: const MenuItemStyleData(
//                       height: 40,
//                       padding: EdgeInsets.only(left: 12, right: 14),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 29,
//               top: 295,
//               child: SizedBox(
//                 width: 302,
//                 height: 15,
//                 child: Text(
//                   'Are symptoms recurrent or persistent?',
//                   style: TextStyle(
//                     fontFamily: 'Raleway',
//                     fontSize: 14,
//                     color: Color(0xFF454571),
//                     height: 1.0,
//                   ),
//                   textAlign: TextAlign.start,
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 1,
//               top: 95,
//               child: Container(
//                 width: 315,
//                 height: 40,
//                 margin: EdgeInsets.fromLTRB(26, 227, 0, 0),
//                 decoration: BoxDecoration(
//                   color:Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 4,
//                       offset: Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(5),
//                   child: DropdownButtonHideUnderline(
//                     child: DropdownButton2<String>(
//                       isExpanded: true,
//                       hint: const Text(
//                         'Recurrent',
//                         style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xB8454571),
//                         ),
//                       ),
//                       items: items2.map((String item) {
//                         return DropdownMenuItem<String>(
//                           value: item,
//                           child: Text(
//                             item,
//                             style: const TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.bold,
//                               color: Color(0xB8454571),
//                             ),
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         );
//                       }).toList(),
//                       value: selectedValue,
//                       onChanged: (String? value) {
//                         setState(() {
//                           selectedValue = value;
//                         });
//                       },
//                       buttonStyleData: ButtonStyleData(
//                         height: 50,
//                         padding: const EdgeInsets.only(left: 6, right: 14),
//                       ),
//                       iconStyleData: const IconStyleData(
//                         icon: Icon(
//                           Icons.arrow_forward_ios_outlined,
//                         ),
//                         iconSize: 14,
//                         iconEnabledColor: Color(0xB8454571),
//                         iconDisabledColor: Color(0xB8454571),
//                       ),
//                       dropdownStyleData: DropdownStyleData(
//                         maxHeight: 200,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(14),
//                           color: Colors.white,
//                         ),
//                         offset: const Offset(1, -10),
//                         scrollbarTheme: ScrollbarThemeData(
//                           radius: const Radius.circular(40),
//                           thickness: MaterialStateProperty.all<double>(6),
//                           thumbVisibility: MaterialStateProperty.all<bool>(true),
//                         ),
//                       ),
//                       menuItemStyleData: const MenuItemStyleData(
//                         height: 40,
//                         padding: EdgeInsets.only(left: 12, right: 14),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//
//             Positioned(
//               left: 30,
//               top: 395,
//               child: Container(
//                 width: 312,
//                 height: 15,
//                 child: Text(
//                   'Select any symptoms related to your condition',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Color(0xFF454571),
//                     fontFamily: 'Raleway',
//                   ),
//                 ),
//               ),
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               padding: EdgeInsets.only(left: 1, top: 20), // Adjust left and top padding as needed
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//
//                   SizedBox(
//                     width: 150, // Adjust width as needed
//                     height: 130, // Adjust height as needed
//                     child: Stack(
//                       children: [
//                         Positioned(
//                           left: 30,
//                           top: 420,
//                           child: Container(
//                             width: 118,
//                             height: 106,
//                             decoration: BoxDecoration(
//                               color: Color(0x45B9B9B9),
//                               borderRadius: BorderRadius.circular(10),
//                               border: Border.all(
//                                 width: 2,
//                                 color: Color(0x1C000000),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 68,
//                           top: 505,
//                           child: Text(
//                             'Bleeding',
//                             style: TextStyle(
//                               fontSize: 13,
//                               color: Color(0xFF9F73AB),
//                               fontFamily: 'Raleway',
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 31,
//                           top: 421,
//                           child: Container(
//                             width: 116,
//                             height: 78,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(10),
//                               border: Border.all(
//                                 width: 1,
//                                 color: Colors.transparent,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 50,
//                           top: 430,
//                           child: Container(
//                             width: 56,
//                             height: 56,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Colors.transparent,
//                             ),
//                             child: Image.asset('assets/images/hemohrage.png'),
//                           ),
//                         ),
//                         Positioned(
//                           left: 120,
//                           top: 430,
//                           child: GestureDetector(
//                             onTap: () {
//                               // Toggle the isChecked value when the checkbox is tapped
//                               setState(() {
//                                 isChecked1 = !isChecked1;
//                               });
//                             },
//                             child: Container(
//                               width: 16,
//                               height: 16,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(4),
//
//                                 shape: BoxShape.rectangle,
//                                 color: isChecked1 ? Color(0xFF9F73AB) : Colors.transparent,
//                                 border: Border.all(
//                                   width: 2,
//                                   color: Color(0x87B5B5B5),
//                                 ),
//                               ),
//                               child: Visibility(
//                                 visible: isChecked1,
//                                 child: Icon(
//                                   Icons.check,
//                                   color: Colors.white,
//                                   size: 12,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: 150, // Adjust width as needed
//                     height: 130, // Adjust height as needed
//                     child: Stack(
//                       children: [
//                         Positioned(
//                           left: 20,
//                           top: 420,
//                           child: Container(
//                             width: 118,
//                             height: 106,
//                             decoration: BoxDecoration(
//                               color: Color(0x45B9B9B9),
//                               borderRadius: BorderRadius.circular(10),
//                               border: Border.all(
//                                 width: 2,
//                                 color: Color(0x1C000000),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 59,
//                           top: 505,
//                           child: Text(
//                             'Itching',
//                             style: TextStyle(
//                               fontSize: 13,
//                               color: Color(0xFF9F73AB),
//                               fontFamily: 'Raleway',
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 21,
//                           top: 421,
//                           child: Container(
//                             width: 116,
//                             height: 78,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(10),
//                               border: Border.all(
//                                 width: 1,
//                                 color: Colors.transparent,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 45,
//                           top: 430,
//                           child: Container(
//                             width: 56,
//                             height: 56,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Colors.transparent,
//                             ),
//                             child: Image.asset('assets/images/itching.png'),
//                           ),
//                         ),
//                         Positioned(
//                           left: 111,
//                           top: 430,
//                           child: GestureDetector(
//                             onTap: () {
//                               // Toggle the isChecked value when the checkbox is tapped
//                               setState(() {
//                                 isChecked2 = !isChecked2;
//                               });
//                             },
//                             child: Container(
//                               width: 16,
//                               height: 16,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(4),
//
//                                 shape: BoxShape.rectangle,
//                                 color: isChecked2 ? Color(0xFF9F73AB) : Colors.transparent,
//                                 border: Border.all(
//                                   width: 2,
//                                   color: Color(0x87B5B5B5),
//                                 ),
//                               ),
//                               child: Visibility(
//                                 visible: isChecked2,
//                                 child: Icon(
//                                   Icons.check,
//                                   color: Colors.white,
//                                   size: 12,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: 150, // Adjust width as needed
//                     height: 130, // Adjust height as needed
//                     child: Stack(
//                       children: [
//                         Positioned(
//                           left: 10,
//                           top: 420,
//                           child: Container(
//                             width: 118,
//                             height: 106,
//                             decoration: BoxDecoration(
//                               color: Color(0x45B9B9B9),
//                               borderRadius: BorderRadius.circular(10),
//                               border: Border.all(
//                                 width: 2,
//                                 color: Color(0x1C000000),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 45,
//                           top: 505,
//                           child: Text(
//                             'Changing',
//                             style: TextStyle(
//                               fontSize: 13,
//                               color: Color(0xFF9F73AB),
//                               fontFamily: 'Raleway',
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 11,
//                           top: 421,
//                           child: Container(
//                             width: 116,
//                             height: 78,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(10),
//                               border: Border.all(
//                                 width: 1,
//                                 color: Colors.transparent,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 30,
//                           top: 430,
//                           child: Container(
//                             width: 56,
//                             height: 56,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Colors.transparent,
//                             ),
//                             child: Image.asset('assets/images/irritation.png'),
//                           ),
//                         ),
//                         Positioned(
//                           left: 100,
//                           top: 430,
//                           child: GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 isChecked3 = !isChecked3;
//                               });
//                             },
//                             child: Container(
//                               width: 16,
//                               height: 16,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(4),
//
//                                 shape: BoxShape.rectangle,
//                                 color: isChecked3 ? Color(0xFF9F73AB) : Colors.transparent,
//                                 border: Border.all(
//                                   width: 2,
//                                   color: Color(0x87B5B5B5),
//                                 ),
//                               ),
//                               child: Visibility(
//                                 visible: isChecked3,
//                                 child: Icon(
//                                   Icons.check,
//                                   color: Colors.white,
//                                   size: 12,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: 150,
//                     height: 130,
//                     child: Stack(
//                       children: [
//                         Positioned(
//                           left: 1,
//                           top: 420,
//                           child: Container(
//                             width: 118,
//                             height: 106,
//                             decoration: BoxDecoration(
//                               color: Color(0x45B9B9B9),
//                               borderRadius: BorderRadius.circular(10),
//                               border: Border.all(
//                                 width: 2,
//                                 color: Color(0x1C000000),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 40,
//                           top: 505,
//                           child: Text(
//                             'Itching',
//                             style: TextStyle(
//                               fontSize: 13,
//                               color: Color(0xFF9F73AB),
//                               fontFamily: 'Raleway',
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 20,
//                           top: 420,
//                           child: Container(
//                             width: 56,
//                             height: 56,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Colors.transparent,
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 2,
//                           top: 421,
//                           child: Container(
//                             width: 116,
//                             height: 78,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(10),
//                               border: Border.all(
//                                 width: 1,
//                                 color: Colors.transparent,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 92,
//                           top: 430,
//                           child: GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 isChecked4 = !isChecked4;
//                               });
//                             },
//                             child: Container(
//                               width: 16,
//                               height: 16,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(4),
//
//                                 shape: BoxShape.rectangle,
//                                 color: isChecked4 ? Color(0xFF9F73AB) : Colors.transparent,
//                                 border: Border.all(
//                                   width: 2,
//                                   color: Color(0x87B5B5B5),
//                                 ),
//                               ),
//                               child: Visibility(
//                                 visible: isChecked4,
//                                 child: Icon(
//                                   Icons.check,
//                                   color: Colors.white,
//                                   size: 12,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//
//
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
