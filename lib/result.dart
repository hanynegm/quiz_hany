// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:secondry_one_lesson_on/main.dart';



class Result extends StatefulWidget {
   const Result({ Key? key}) : super(key : key);

  @override
  State<Result> createState() => ResultState();
  //
 
}

class ResultState extends State<Result> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("الصف الأول الثانوى"),
          centerTitle: true,
        ),

        body: Container(
                  width: double.infinity,
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
          child: Column(
            children: [
                        SizedBox(height: 15),
                Container(
        
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  height: 55,
                  width: double.infinity,
                  color: Color.fromARGB(255, 8, 3, 78),
                  child: Text("مادة اللغة الفرنسية",textAlign: TextAlign.center,style: TextStyle(fontSize: 27, color: Colors.white,),)),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  height: 50,
                  width: double.infinity,
                  color:Color.fromARGB(255, 110, 109, 16),
                  child: Text("إمتحان الدرس الأول",textAlign: TextAlign.center,style: TextStyle(fontSize: 24, color: Colors.white,) )
                  ),
                SizedBox(height: 20),
        
        Container(
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  height: 70,
                  width :150,
                 // width: double.infinity,
                  color:Color.fromARGB(239, 199, 25, 25),
                  
                  child: Text('$studentDegree',
                  textAlign: TextAlign.center,style: TextStyle(fontSize: 24, color: Colors.white,),)
                  ),
                SizedBox(height: 10),
        

        Container(
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  height: 70,
                  width :150,
                //  width: double.infinity,
                  color:Color.fromARGB(176, 24, 95, 33),
                  child: Text("مــن : 19",textAlign: TextAlign.center,style: TextStyle(fontSize: 24, color: Colors.white,),)
                  ),
                  Container( 
                    child: Image.asset('images/hany.jpg', width: 150, height: 200),), 
                  Container(child: Text("مسيو : أحمد حمدى"),),
                  Container(child: Text("Eng: Hany Negm 2023/2024"),),
              ],
          ),
          
        ),


    );
  }


}