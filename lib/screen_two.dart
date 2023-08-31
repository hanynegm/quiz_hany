// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:secondry_one_lesson_on/screen_one.dart';
import 'package:secondry_one_lesson_on/screen_three.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  String? rightanswer = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("أولى ثانوى"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
            
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'News',
            backgroundColor: Colors.blue,
            
            ),
           BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.blue,
            
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward_ios_outlined),
            label: 'Back',
            backgroundColor: Colors.blue,
            
            )   
        ]
      ),
      body:
      Container(
        width: double.infinity,
        color: Colors.white,
          padding: EdgeInsets.all(10),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                height: 50,
                width: double.infinity,
                color: Color.fromARGB(255, 102, 210, 226),
                child: Text("مادة اللغة الفرنسية",textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                height: 40,
                width: double.infinity,
                color: Color.fromARGB(255, 241, 240, 164),
                child: Text("إمتحان الدرس الأول",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),)
                ),
              SizedBox(height: 30),
              Text(" ❷ selon le texte ;il ya ………….",style: TextStyle(fontSize: 20,color: Colors.red),),
              SizedBox(height: 20),
              
                RadioListTile(
                    title: Text("trois personne"),
                    value: "trois personne",
                    groupValue: rightanswer,
                    activeColor: Colors.green,
                    onChanged: (val){
                      setState(() {
                        rightanswer = val;
                        print(rightanswer);
                        Icon(Icons.access_alarm);
                      });
                    }
                  ),
                
                RadioListTile(
                    title: Text("quatre personne"),
                    value: "quatre personne",
                    groupValue: rightanswer,
                    activeColor: Colors.red,
                    onChanged: (val){
                       setState(() {
                        rightanswer = val;
                      });
                    }
                  ), 
                  
                 RadioListTile(
                    title: Text("une personne"),
                    value: "une personne",
                    groupValue: rightanswer,
                    activeColor: Colors.red,
                    onChanged: (val){
                        setState(() {
                        rightanswer = val;
                      });
                    }
                  ),
                
                  RadioListTile(
                      title: Text("six personne"),
                      value: "six personne",
                      groupValue: rightanswer,
                      activeColor: Colors.red,
                    onChanged: (val){
                       setState(() {
                        rightanswer = val;
                      });
                    }
                  ),

                   SizedBox(height: 50,) ,
                  Row(
                    children: [

                       SizedBox(width: 50,) ,  
                      MaterialButton(
                         child: Text("Back"),
                         minWidth: 100,
                         color: Colors.red,
                         onPressed: (){
                              Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ScreenOne(),
                              ),
                            );
                          },
                      ),

                      SizedBox(width: 30,),
                      
                       MaterialButton  (               
                         child: Text("Next"),
                         color: Colors.green,
                         minWidth: 100,
                         onPressed: (){
                                Navigator.pushReplacement(
                                    context,
                                  MaterialPageRoute(
                                      builder: (context) => ScreenThree(),
                                ),
                              );
                            },
                       ),

                      
                    ],
                  )     
            ],
          ),
          
      ),

    );
  }
}