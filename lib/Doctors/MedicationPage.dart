import 'package:derma/ui_Todo/pages/AddTreatmentPlan.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../ui_Todo/pages/Doctor_instructions.dart';

class MedicationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 30),

          Container(
            width: 312,
            height: 60,
            child: Text(
              'Add treatment plan',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF454571),
                fontFamily: 'Raleway',
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(
            height: 290,
            width: 600,
            child: Lottie.asset('assets/animation/todo.json'),
          ),
          SizedBox(height: 50),

          Container(
            height: 42,
            width: 310,
            margin: EdgeInsets.only(right: 20,left:20,bottom: 100),
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AddPlanPage(),
                  ),
                );
              },
              child: Text(
                "Continue",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
