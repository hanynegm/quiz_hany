// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:secondry_one_lesson_on/screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
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
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                height: 55,
                width: double.infinity,
                color: Color.fromARGB(255, 132, 212, 224),
                child: Text("مادة اللغة الفرنسية",textAlign: TextAlign.center,style: TextStyle(fontSize: 27),)),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                height: 50,
                width: double.infinity,
                color:Color.fromARGB(255, 241, 240, 164),
                child: Text("إمتحان الدرس الأول",textAlign: TextAlign.center,style: TextStyle(fontSize: 24),)
                ),
              SizedBox(height: 30),
              Text("❶ cette rencontre est ………. ",style: TextStyle(fontSize: 20,color: Colors.red),),
              SizedBox(height: 20),
              
                RadioListTile(
                    title: Text("le soir"),
                    value: "le soir",
                    groupValue: rightanswer,
                    activeColor: Colors.green,
                    onChanged: (val){
                      setState(() {
                        rightanswer = val;
                        print(rightanswer);
                      });
                    }
                  ),
                
                RadioListTile(
                    title: Text("le matin"),
                    value: "le matin",
                    groupValue: rightanswer,
                    activeColor: Colors.red,
                    onChanged: (val){
                       setState(() {
                        rightanswer = val;
                      });
                    }
                  ), 
                  
                 RadioListTile(
                    title: Text("la nuit"),
                    value: "la nuit",
                    groupValue: rightanswer,
                    activeColor: Colors.red,
                    onChanged: (val){
                        setState(() {
                        rightanswer = val;
                      });
                    }
                  ),
                
                  RadioListTile(
                    title: Text("l'après midi"),
                    value: "l'après midi",
                    groupValue: rightanswer,
                    activeColor: Colors.red,
                    tileColor:  Colors.red,
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
                      MaterialButton(onPressed: (){
                      },
                      child: Text("Back"),
                      minWidth: 100,
                      color: Color.fromARGB(255, 247, 197, 193)
                      ),

                      SizedBox(width: 30,),
                       MaterialButton(onPressed: (){
                         Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScreenTwo(),
                          ),
                        );
                      },
                      child: Text("Next"),
                      color: Color.fromARGB(255, 201, 243, 202),
                      minWidth: 100,
                      ),

                      
                    ],
                  )
            ],
          ),
          
      ),

    );
  }
}