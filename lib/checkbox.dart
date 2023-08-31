// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:secondry_one_lesson_on/quizcheckbox.dart';

class QuizApp extends StatefulWidget {
   const QuizApp({ Key? key}) : super(key : key);
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<QuizQuestion> _questions = [
    QuizQuestion(
      question: 'What is the capital of France?',
      answers: ['Paris', 'London', 'Berlin', 'Madrid'],
      correctAnswers: [true, false, false, false],
    ),
    QuizQuestion(
      question: 'What is the largest planet in our solar system?',
      answers: ['Mars', 'Venus', 'Jupiter', 'Saturn'],
      correctAnswers: [false, false, true, false],
    ),
    QuizQuestion(
      question: 'What is the smallest country in the world?',
      answers: ['Monaco', 'Vatican City', 'San Marino', 'Liechtenstein'],
      correctAnswers: [false, true, false, false],
    ),
  ];

  List<List<bool>> _selectedAnswers = List.generate(3, (_) => List.filled(4, false));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: ListView.builder(
        itemCount: _questions.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  _questions[index].question,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _questions[index].answers.length,
                itemBuilder: (BuildContext context, int answerIndex) {
                  return CheckboxListTile(
                    title: Text(_questions[index].answers[answerIndex]),
                    value: _selectedAnswers[index][answerIndex],
                    onChanged: (bool? value) {
                      setState(() {
                        _selectedAnswers[index][answerIndex] = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    int numCorrect = 0;
                    for (int i = 0; i < _questions[index].correctAnswers.length; i++) {
                      if (_selectedAnswers[index][i] == _questions[index].correctAnswers[i]) {
                        numCorrect++;
                      }
                    }
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Result'),
                          content: Text('You got $numCorrect out of ${_questions[index].correctAnswers.length} correct!'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}