import 'package:derma/Patients/yourtask.dart';
import 'package:flutter/material.dart';
import 'package:derma/ui_Todo/pages/Treatment%20plan.dart';
import '../size_config.dart';
import 'home_page.dart';

class Doctor_instructions extends StatelessWidget {
  const Doctor_instructions({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: Color(0xFF454571),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(

            children: [
            Positioned(
            left: 60,
            right: 60,
            child: Container(
                height: size.height*.2,
                child: Column(
                  children: [
                    Expanded(child: SizedBox(height: 20,)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 25,),
                        Text(
                          "Look for your treatment plans and tasks",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'Releway',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    Expanded(child: SizedBox(height: 20,)),
                  ],
                ),
              ),),
              Container(
                height: size.height*.8,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),),
                child:  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Text("Treatment plan",style: TextStyle(fontSize: 20,color: Color(0xFF9F73AB),fontFamily: 'Releway', fontWeight: FontWeight.bold),),
                          Spacer(),
                          TextButton(onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Treatmentplan(),)
                            );

                          }, child: Text("See all",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF9F73AB),fontFamily: 'Releway',),)),
                          SizedBox(width: 10,),
                        ],
                      ),


                      Container(
                        height: 280,
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

                      SizedBox(height: 20),


                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Text("Your tasks",style: TextStyle(fontSize: 20,color: Color(0xFF9F73AB),fontFamily: 'Releway', fontWeight: FontWeight.bold),),
                          Spacer(),
                          TextButton(onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyApp(),)
                            );

                          },
                           child: Text("See all and add",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF9F73AB),fontFamily: 'Releway',),)),
                          SizedBox(width: 10,),
                        ],
                      ),

                      Row(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: List.generate(10, (index) {
                                  return Container(
                                    width: size.width * 0.4,
                                    height: size.height * 0.2,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(size.width * 0.03),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          blurRadius: 6,
                                          offset: Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "DermDiag",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xFF454571),
                                              fontFamily: 'Releway',
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "will be done soon",
                                            style: TextStyle(
                                              color: Color(0xFF454571),
                                              fontFamily: 'Releway',
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                        ],
                      ),

                    ]
                ),

              ),

            ],
          ),
        ),

      ),

    );
  }
}
