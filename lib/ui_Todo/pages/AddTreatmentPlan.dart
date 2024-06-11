import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AddPlanPage(),
  ));
}

class AddPlanPage extends StatefulWidget {
  @override
  _AddPlanPageState createState() => _AddPlanPageState();
}

class _AddPlanPageState extends State<AddPlanPage> {
  String? selectedValue;

  final List<String> items = [
    '1 Medication',
    '2 Medications',
    '3 Medications',
    '4 Medications',
    '5 Medications',
    '6 Medications',
    '7 Medications',
    '8 Medications',
    '9 Medications',
    '10 Medications',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(      toolbarHeight: 50,

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
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (_) => Questions(title: ''),
                //   ),
                // );
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
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20,top:1,left: 110),
                child: Text(
                  'Add treatment plan',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(63, 59, 108, 1),
                      fontFamily: 'Releway',
                      height: 1.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),

            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 60, bottom: 20),
            child: Text(
              'How many medications do you want to add?',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 14,
                color: Color(0xFF454571),
                height: 1.0,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 315,
              height: 40,
              margin: EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: const Text(
                      'Number of medications',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xB8454571),
                      ),
                    ),
                    items: items.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xB8454571),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      );
                    }).toList(),
                    value: selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    buttonStyleData: ButtonStyleData(
                      height: 50,
                      padding: const EdgeInsets.only(left: 6, right: 14),
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                      iconSize: 14,
                      iconEnabledColor: Color(0xB8454571),
                      iconDisabledColor: Color(0xB8454571),
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      offset: const Offset(1, -10),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all<double>(6),
                        thumbVisibility: MaterialStateProperty.all<bool>(true),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                      padding: EdgeInsets.only(left: 12, right: 14),
                    ),
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _buildMedicationCards(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildMedicationCards() {
    if (selectedValue == null) {
      return [];
    }
    int medications = int.tryParse(selectedValue!.split(' ')[0]) ?? 0;
    List<Widget> cards = [];
    for (int i = 1; i <= medications; i++) {
      cards.add(
        MedicationCard(),
      );
      // Add a divider between cards
      if (i < medications) {
        cards.add(Divider());
      }
    }
    return cards;
  }
}

class MedicationCard extends StatefulWidget {
  @override
  _MedicationCardState createState() => _MedicationCardState();
}

class _MedicationCardState extends State<MedicationCard> {
  String? option1Selected;
  String? option2Selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 7),
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(7),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF454571).withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter medication name',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              ),
              style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFF454571),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Releway'
              ),
            ),
          ),

          Row(
            children: [

              Expanded(


                child: Container(
                  margin: EdgeInsets.only(top: 22),

                  width: 10,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),

                  child: DropdownButton2<String>(
                    value: option1Selected,
                    hint: const Text(
                      'How many times per day?',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xB8454571),
                      ),
                    ),
                    items: ['1 Time','2 Times', '3 Times','4 Times']
                        .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xB8454571),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                        .toList(),
                    onChanged: (String? value) {
                      setState(() {
                        option1Selected = value;
                      });
                    },
                    buttonStyleData: ButtonStyleData(
                      height: 40,
                      padding: EdgeInsets.only(left: 1),
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                      iconSize: 14,
                      iconEnabledColor: Color(0xB8454571),
                      iconDisabledColor: Color(0xB8454571),
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      offset: const Offset(1, -10),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all<double>(6),
                        thumbVisibility: MaterialStateProperty.all<bool>(true),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      padding: EdgeInsets.only(left: 12),
                    ),
                  ),
                ),

              ),
              Expanded(
                child:
                Container(
                  margin: EdgeInsets.only(top: 22, left: 24),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: DropdownButton2<String>(
                    value: option2Selected,
                    hint: const Text(
                      'For how many days?',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xB8454571),
                      ),
                    ),
                    items: [ 'For 1 Day', 'For 2 Days', 'For 3 Days', 'For 4 Days', 'For 5 Days', 'For 6 Days','For 1 Week', 'For 2 Weeks', 'For 3 Weeks', 'For 1 Month']
                        .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xB8454571),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                        .toList(),
                    onChanged: (String? value) {
                      setState(() {
                        option2Selected = value;
                      });
                    },
                    buttonStyleData: ButtonStyleData(
                      height: 40,
                      padding: const EdgeInsets.only(left: 2),
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                      iconSize: 14,
                      iconEnabledColor: Color(0xB8454571),
                      iconDisabledColor: Color(0xB8454571),
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      offset: const Offset(1, -10),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all<double>(6),
                        thumbVisibility: MaterialStateProperty.all<bool>(true),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                      padding: EdgeInsets.only(left: 4, right: 14),
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
