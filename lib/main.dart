import 'package:flutter/material.dart';
import 'package:secondry_one_lesson_on/checkbox.dart';
import 'package:secondry_one_lesson_on/questions_quiz.dart';
import 'package:secondry_one_lesson_on/result.dart';
import 'package:secondry_one_lesson_on/screen_one.dart';
import 'package:secondry_one_lesson_on/screen_two.dart';
import 'package:secondry_one_lesson_on/show_data_class.dart';

int studentDegree = 0;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key}) : super(key : key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: InstituteScreen(),
      //home: Result(),
      home: ShowDataClass(),
    );
  }
}
