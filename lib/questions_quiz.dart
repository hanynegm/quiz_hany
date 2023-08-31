

// ignore_for_file: prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:secondry_one_lesson_on/quiz.dart';

class QuizPage extends StatefulWidget {
   const QuizPage({ Key? key}) : super(key : key);


  @override
  // ignore: library_private_types_in_public_api
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuestionIndex = 0;
 // final Quiz _quiz = Quiz(question: ,answers: ,correctAnswer: );
  List<Quiz> _quizQuestions = [
      Quiz(
      question : "What is the capital of France ?",
      answers : ["Paris", "London", "Rome","Mali"],
      correctAnswer: "Paris"
  ),

   Quiz(
      question : "What is the square root of 16 ?",
      answers : ["4", "8", "12","16"],
      correctAnswer: "8"
  ),

   Quiz(
      question : "What is the sum of 4 and 4 ?",
      answers : ["4","6", "8", "12"],
      correctAnswer: "8"
  ),

  Quiz(
      question : "What is the name of the tallest mountain in the world ?",
      answers : ["Mount Everest", "K2", "Kangchenjunga","pyrameds"],
      correctAnswer: "Mount Everest"
  ),

  ];

  void _answerQuestion(String answer) {
    bool isCorrect = _quizQuestions[_currentQuestionIndex].correctAnswer == answer;

    if (isCorrect) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Correct!"),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Incorrect!"),
        ),
      );
    }

    _currentQuestionIndex++;

    if (_currentQuestionIndex == _quizQuestions.length) {
      _currentQuestionIndex = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          const Text("اللغة الفرنسية"),
          const SizedBox(height: 30),
          const Text(" أمتحان الدرس الأول"),
          const SizedBox(height: 30),
          //Text(_quizQuestions[_currentQuestionIndex].question),
          const SizedBox(height: 20),
          _buildAnswerOptions(),
        ],
      ),
    );
  }

  Widget _buildAnswerOptions() {
     return Row(
       children: [
         for (String answer in _quizQuestions[_currentQuestionIndex].answers!)
           Expanded(
            child: ElevatedButton(
               onPressed: () => _answerQuestion(answer),
              child: Text(answer),
             ),
           ),
       ],
     );

  //     return Column(
  //     children: [
  //       for (String answer in _quizQuestions[_currentQuestionIndex]["answers"])
  //         Expanded(
             
  //           child: ElevatedButton(
  //           onPressed: () => _answerQuestion(answer),
  //           child: Text(answer),
  //           ),
  //        ),
  //    ],
  //  );



  }
}