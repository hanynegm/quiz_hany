// ignore_for_file: prefer_const_constructors, avoid_print, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:secondry_one_lesson_on/quiz.dart';
import 'package:secondry_one_lesson_on/result.dart';

import 'main.dart';


class ShowDataClass extends StatefulWidget {
   const ShowDataClass({ Key? key}) : super(key : key);

  @override
  State<ShowDataClass> createState() => _ShowDataClassState();
  //
 
}

class _ShowDataClassState extends State<ShowDataClass> {

Quiz quiz = Quiz();

Question ques = Question();

int? i = 0;
String choisetanswer ="";
String choisetanswer1 ="";


// ignore: unnecessary_new
    //Test test1 = Test();
  
  
  bool is_checked = false;

  int currentcheckindex = 0;

  int currentindex = 0;
   //int studentDegree = 0;
   int totalDegree = 19;
   int questionNo = 1; 

  List<bool> correctvalue = []  ;
  
  List <CheckTest> checktest=[
          CheckTest(
            q : "1.	Tu te présentes à ton professeur, qu'est-ce que tu dis ?",
            a : ["Je m'appelle Léo.",
                  "Elle s'appelle Lara.",
                  "C'est Daniel, un voisin.",
                  "Voici Pierre.",
                  "Moi, c'est Ali"],
            c: [true,false,false,false,true] ,
        ),

        CheckTest(
            q : " 2.	Tu demandes à ton ami le nom de son père, qu'est-ce que tu dis ?",

            a : ["Comment t'appelles-tu ?",
                  "Comment s'appelle ton père ?",
                  "Ton père, Comment il s'appelle?",
                  "Comment ça va ?",
                  "Comment s'appelle ton ami ?"],
            c: [false,true,true,false,false] ,
        ),
        CheckTest(
            q : " 3.	Tu demandes à ton ami sa couleur préférée, qu'est-ce qu'il dit ?",
            a : ["J'aime les maths.", 
                  "J'aime le sport.",
                  "Il aime le noir.",
                  "J'aime le vert.",
                  "J'adore le orange."],
            c: [false,false,false,true,true] ,
        ),
        CheckTest(
            q : " 4.	Tu prends congé de tes parents, qu'est-ce que tu dis ?",
            a : ["Au revoir !",
                  "Merci beaucoup !",
                  "ciao.",
                  "Excusez-moi !",
                  "Bonsoir mes parents !"],
            c: [true,false,false,false,true] ,
      ),

  ]; 

List<List<bool>> _selectedAnswers = List.generate(4, (_) => List.filled(5, false));

  List<Test> test = [
  Test(
      q : "❶ cette rencontre est ………. ",
      a : ["le soir", "le matin", "la nuit","l'après midi"],
      c: "le matin"
  ),

   Test(
      q : " ❷ selon le texte ;il ya ………….",
      a : ["trois personne", "quatre personne", "une personne","six personne"],
      c: "quatre personne"
  ),

   Test(
      q : " ❸ théo est …………..",
      a : ["le voisin de robert","l'ami de sandra", "l'ami de robert", "le voisin de céline"],
      c: "le voisin de robert"
  ),

  Test(
      q : " ❹ pour prendre congé,robert dit …………….",
      a : ["salut", "enchanté", "au revoir","à plus"],
      c: "au revoir"
  ),

//////////////////
  Test(
      q : "❶ Didier a…………..ans",
      a : ["quinze", "treize", "seize","trois"],
      c: "quinze"
  ),

  Test(
      q : " ❷ Fabien a……………….",
      a : ["quatre copains du judo", "deux copains du judo", "trois copines du judo","chimietrois copains du judo"],
      c: "trois copines du judo"
  ),
  Test(
      q : " ❸ Hani habite…………………",
      a : ["à Nice", "à Paris", "à Tanta","au lycée."],
      c: "à Tanta"
  ),
  Test(
      q : " ❹ Dans ce document, Didier……………………..",
      a : ["se présente et présente ses copains.", "se présente seulement.", "présente ses amis seulement","se présente et présente ses copines."],
      c: "se présente et présente ses copains."
  ),
///////////////

//////////////////
  Test(
      q : "1.	Tu te présentes à ton professeur, qu'est-ce que tu dis ?",
      a : ["Je m'appelle Léo.",
            "Elle s'appelle Lara.",
            "C'est Daniel, un voisin.",
            "Voici Pierre.",
            "Moi, c'est Ali"],
      c: "Je m'appelle Léo."
  ),

  Test(
      q : " 2.	Tu demandes à ton ami le nom de son père, qu'est-ce que tu dis ?",

      a : ["Comment t'appelles-tu ?",
            "Comment s'appelle ton père ?",
            "Ton père, Comment il s'appelle?",
            "Comment ça va ?",
            "Comment s'appelle ton ami ?"],
      c: "Ton père, Comment il s'appelle?"
  ),
  Test(
      q : " 3.	Tu demandes à ton ami sa couleur préférée, qu'est-ce qu'il dit ?",
      a : ["J'aime les maths.", 
            "J'aime le sport.",
            "Il aime le noir.",
            "J'aime le vert.",
            "J'adore le orange."],
      c: "J'adore le orange."
  ),
  Test(
      q : " 4.	Tu prends congé de tes parents, qu'est-ce que tu dis ?",
      a : ["Au revoir !",
            "Merci beaucoup !",
            "ciao.",
            "Excusez-moi !",
            "Bonsoir mes parents !"],
      c: "Au revoir !"
  ),
///////////////

//////////////////
  Test(
      q : "❶ Le sac de Manar est ……….",
      a : ["noirs",
            "noire",
            "marron",
            "noires"],
      c: "marron"
  ),

  Test(
      q : " ❷ elle ……………le jaune",
      a : ["est",
            "adore",
            "aimes",
            "détestons"],
      c: "adore"
  ),
  Test(
      q : "❸  Nous …………..égyptiens",
      a : ["suis", 
            "êtes",
            "est",
            "sommes"],
      c: "sommes"
  ),
  Test(
      q : "❹ Nada est………copine du lycée",
      a : ["un",
            "une",
            "des",
            "de la"],
      c: "une"
  ),
    Test(
      q : "❺  ……………………… t' appelles - tu?",

      a : ["quel",
            "quelles",
            "comment",
            "quels"],
      c: "comment"
  ),
  Test(
      q : "❻  ………………….est – ce?           C'est Mahmoud.",
      a : ["que ", 
            "qui",
            "comment",
            "quel"],
      c: "qui"
  ),
  Test(
      q : "❼ J’aime……………bleu",
      a : ["le",
            "la",
            "l'",
            "les"],
      c: "le"
  ),
///////////////

   
];

    List <String> questionss = [
        'this is my first question?',
        'this is my second question?',
        'this is my thrid question?',
        'this is my forth question?',
  ];



   
   List<Question> questionGroup = [
        Question(
          q: 'عدد الكواكب فى المجموعة الشمسية',
          a: 'العدد 15',
          c: true,
        ),

        Question(
          q: 'هل قطار السابعة يذهب الى الاسكندرية',
          a: 'نعم يذهب',
          c: true,
        ),

        Question(
          q: 'هل القطة من الحيوانات الاليفة',
          a: 'لا',
          c: true,
        ),

        Question(
          q: 'this if the fourth Question',
          a: 'لا',
          c: true,
        ),

    ];

  showAnswers(){
    for (int i = 0 ; i < test[currentindex].questionAnswer!.length ;i++){
        // ignore: avoid_print
        print (test[currentindex].questionAnswer!);
        
    }

  }
  // ignore: non_constant_identifier_names
  NextQuestion(){
    if (currentindex == 4){
      currentindex = 0;
    }else{
      currentindex ++;
    }
  }
 

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    showAnswers();
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
                        SizedBox(height: 5),
                Container(
        
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  height: 55,
                  width: double.infinity,
                  color: Color.fromARGB(255, 8, 3, 78),
                  child: Text("مادة اللغة الفرنسية",textAlign: TextAlign.center,style: TextStyle(fontSize: 27, color: Colors.white,),)),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  height: 50,
                  width: double.infinity,
                  color:Color.fromARGB(255, 110, 109, 16),
                  child: Text("إمتحان الدرس الأول",textAlign: TextAlign.center,style: TextStyle(fontSize: 24, color: Colors.white,) )
                  ),
                SizedBox(height: 4),
        
        
            //  Text(questionss[currentindex]),
            //  Text(questionGroup[currentindex].questionText.toString()),
              Container(
                
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                  height: 50,
                  width: double.infinity,
                  color:Color.fromARGB(255, 197, 29, 7),
                  child: Text(test[currentindex].questionText.toString(),
                  style: TextStyle(
                  fontSize: 18,
                  color: Colors.yellow,
                  ),
                  
                  )
                ),
    
             if (questionNo == 9 || questionNo == 10 || questionNo == 11 ||questionNo == 12   ) ...[
             //if (questionNo == 12) ...[
                 
                // _buildAnswerCheckBoxs(),
                 ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: checktest[currentcheckindex].questionAnswer!.length,
                      itemBuilder: (BuildContext context, int answerIndex) {
                        return CheckboxListTile(
                          title: Text( checktest[currentcheckindex].questionAnswer![answerIndex]),
                          value: _selectedAnswers[currentcheckindex][answerIndex],
                          onChanged: (bool? value) {
                            setState(() {
                              _selectedAnswers[currentcheckindex][answerIndex] = value!;
                              print(checktest[currentcheckindex].correctAnswer![answerIndex]);
                              print(answerIndex);
                              print(value);
                            });
                          },
                       controlAffinity: ListTileControlAffinity.leading,
                    );
                  },
              )
                 
               
              ] else ...[
                _buildAnswerOptions(),
              ],
              //  _buildAnswerOptions(),
              

              SizedBox(height: 12,),
             
              ElevatedButton(
                onPressed: (){
                     // print(test[currentindex].questionText!.length-1);
                    //  print(test.length);
                      if (currentindex == (test.length-1)){
                        
                        //  currentindex = 0;
                          Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Result(),
                          ),
                        );
                        print("degree is : ");
                          print(studentDegree);
                      }else{
                        //print(test[currentindex].correctAnswer!);
                       // print(choisetanswer1);
                        if(test[currentindex].correctAnswer! == choisetanswer1){
                          studentDegree ++;

                        }
                          questionNo ++;
                          currentindex ++;
                          if(questionNo>9 && questionNo <13){
                              currentcheckindex ++;
                              print(currentcheckindex);
                          }
                          
                          
                          //print(studentDegree);
                      }
                  setState(() {
        
                   //Text(questionss[currentindex]); 
                   //Text(questionGroup[currentindex].questionText.toString());
                    
                   Text(test[currentindex].questionText.toString());
                  
                    showAnswers();
                    
                  // Text(ques.questionText![currentindex]);
                  // quiz.
                   
                  });
                   
                }, 
                child: Text("السؤال التالي"),
                ),
                 SizedBox(height: 15),
                Container(
        
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  height: 30,
                  width :80,
                 // width: double.infinity,
                  color: Color.fromARGB(255, 8, 3, 78),
                  child: Text(questionNo.toString() + "/" + totalDegree.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                     color: Colors.white,
                     ),
                     )
                     ),
                     

              ],
          ),

          
        ),
        
    );
  }

  Widget _buildAnswerOptions() {
     return Column(
       children: [
         SizedBox(height: 30,),
         for (String answer in test[currentindex].questionAnswer!)
         //  Expanded(
             RadioListTile(
              title: Text(answer),
              value: Text(answer).toString(), 
             // value : "aaaa",
              groupValue: choisetanswer, 
              activeColor: Colors.blue,
              onChanged: (val){
                  setState(() {
                        choisetanswer = val.toString();
                      // print(test[currentindex].questionAnswer!.toString());
                        choisetanswer1 = answer;
                      });
              },
              ),
 
       ],
     );
  }

      //  Start Checkbox

 /// Widget _buildAnswerCheckBoxs() {
     
    //  ListView.builder(
    //             shrinkWrap: true,
    //             physics: NeverScrollableScrollPhysics(),
    //             itemCount: checktest[currentcheckindex].questionAnswer!.length,
    //             itemBuilder: (BuildContext context, int answerIndex) {
    //               return CheckboxListTile(
    //                 title: Text( checktest[currentcheckindex].questionAnswer![answerIndex]),
    //                 value: checktest[currentcheckindex].correctAnswer![answerIndex],
    //                 onChanged: (bool? value) {
    //                   setState(() {
    //                     checktest[currentcheckindex].correctAnswer![answerIndex] = value!;
    //                   });
    //                 },
    //                 controlAffinity: ListTileControlAffinity.leading,
    //               );
    //             },
    //           );
    //  return Column(
    //    children: [
    //      SizedBox(height: 30,),
        
    //      for (String answer in checktest[currentcheckindex].questionAnswer!)
    //         // correctvalue.add(checktest[currentcheckindex].correctAnswer![i!]),
    //           CheckboxListTile(
    //           title: Text(answer),
    //           value: checktest[currentcheckindex].correctAnswer![i!],
    //         //  groupValue : checktest[currentcheckindex].correctAnswer![0]
    //           activeColor: Colors.blue,
    //           onChanged: (bool? value){
    //               setState(() {
    //               checktest[currentcheckindex].correctAnswer![i!] = value!;
    //              });
    //           },
    //           ),
           
    //    ],
    //  );
  }

      //  End Checkbox
//}