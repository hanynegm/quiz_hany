

class Question{
   String? questionText;
   String? questionAnswer;
   bool? correctAnswer;

  Question({String? q, String? a, bool? c}){
    questionText = q;
    questionAnswer = a;
    correctAnswer = c;
  }
}

class Test{
   String? questionText;
   List<String>? questionAnswer;
   String? correctAnswer;

  Test({String? q, List<String>? a, String? c}){
    questionText = q;
    questionAnswer = a;
    correctAnswer = c;
  }
}

List<Test> test = [
  Test(
      q : "What is the capital of France ?",
      a : ["Paris", "London", "Rome","Mali"],
      c: "Paris"
  ),

   Test(
      q : "What is the square root of 16 ?",
      a : ["4", "8", "12","16"],
      c: "8"
  ),

   Test(
      q : "What is the sum of 4 and 4 ?",
      a : ["4","6", "8", "12"],
      c: "8"
  ),

  Test(
      q : "What is the name of the tallest mountain in the world ?",
      a : ["Mount Everest", "K2", "Kangchenjunga","pyrameds"],
      c: "Mount Everest"
  ),
   
];

class CheckTest{
   String? questionText;
   List<String>? questionAnswer;
   List<bool>? correctAnswer;
  
  CheckTest({String? q, List<String>? a, List<bool>? c}){
    questionText = q;
    questionAnswer = a;
    correctAnswer = c;
}

}

// List<Question> questionGroup = [
//   Question(
//     q: 'عدد الكواكب فى المجموعة الشمسية',
//     a: 'العدد 15',
//     c: true,
//   ),

//    Question(
//     q: 'هل قطار السابعة يذهب الى الاسكندرية',
//     a: 'نعم يذهب',
//     c: true,
//   ),

//    Question(
//     q: 'هل القطة من الحيوانات الاليفة',
//     a: 'لا',
//     c: true,
//   ),

//    Question(
//     q: 'this if the fourth Question',
//     a: 'لا',
//     c: true,
//   ),

// ];



// // ignore_for_file: non_constant_identifier_names

// import 'package:flutter/material.dart';


class Quiz{
   String? question;
   List<String>? answers;
   String? correctAnswer;

  Quiz({this.question, this.answers, this.correctAnswer});
      
}


// List<Quiz> questons = [
//   Quiz(
//       question : "What is the capital of France ?",
//       answers : ["Paris", "London", "Rome","Mali"],
//       correctAnswer: "Paris"
//   ),

//    Quiz(
//       question : "What is the square root of 16 ?",
//       answers : ["4", "8", "12","16"],
//       correctAnswer: "8"
//   ),

//    Quiz(
//       question : "What is the sum of 4 and 4 ?",
//       answers : ["4","6", "8", "12"],
//       correctAnswer: "8"
//   ),

//   Quiz(
//       question : "What is the name of the tallest mountain in the world ?",
//       answers : ["Mount Everest", "K2", "Kangchenjunga","pyrameds"],
//       correctAnswer: "Mount Everest"
//   ),
   
// ];

  




// // Quiz (){
// //    questions = [
// //      question( 
// //         "question": "What is the capital of France ?",
// //         "answers": ["Paris", "London", "Rome","Mali"],
// //         "correctAnswer": 0,
// //      ),
      
// //       question{
// //         "question": "What is the square root of 16 ?",
// //         "answers": ["4", "8", "12"],
// //         "correctAnswer": 1,
// //       },

// //      question  {
// //         "question": "What is the sum of 4 and 4 ?",
// //         "answers": ["4", "5", "8"],
// //         "correctAnswer": 2,
// //       },

// //        {
// //         "question": "What is the name of the tallest mountain in the world?",
// //         "answers": ["Mount Everest", "K2", "Kangchenjunga"],
// //         "correctAnswer": 0,
// //       },



// //     ];
// //   }



// // }
 
  
  
