import 'package:flutter/material.dart';
import 'Doctor_instructions.dart';

class Treatmentplan extends StatelessWidget {
  const Treatmentplan({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:AppBar(
        toolbarHeight: 80,

        title: Text(
        "All treatment plans",
        textAlign: TextAlign.left,
        style: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(63, 59, 108, 1),
    fontFamily: 'poe',
      ),),
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
                    builder: (_) => Doctor_instructions(),
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
      body:
      Container(
        height: 780,
        child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: List.generate(10, (index) {
              return Container(
                width: size.width * 0.9,
                height: 70,
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width * 0.03),
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
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "3 Times",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF454571),
                            fontFamily: 'Releway',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Per day",
                          style: TextStyle(
                            color: Color(0xFF454571),
                            fontFamily: 'Releway',
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: size.height * 0.1,
                      width: 2,
                      color: Colors.grey.shade300,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: size.width * 0.6,
                          child: Text(
                            "panadol extra",
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF454571),
                              fontFamily: 'Releway',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * 0.6,
                          child: Text(
                            "For 10 Days",
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF454571),
                              fontFamily: 'Releway',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
          ),
        ),),

    );
  }
}
