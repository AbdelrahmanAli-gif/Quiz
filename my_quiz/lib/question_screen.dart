import 'package:flutter/material.dart';
import 'package:my_quiz/final_screen.dart';
import 'package:my_quiz/quiz%20model/quiz.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
  final int index;
  QuestionScreen(this.index);
}

class _QuestionScreenState extends State<QuestionScreen> {
  Quiz myQuiz = Quiz();
  bool isCorrect = false;
  bool isWrong = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
                myQuiz.quiz[widget.index].question,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20.0
                )
            ),
            Visibility(
              child: Icon(
                Icons.check,
                color: Colors.green,
                size: 50.0,),
              visible: isCorrect,
              replacement: Visibility(
                  child: Icon(
                    Icons.clear,
                    color: Colors.red,
                    size: 50.0,),
                  visible: isWrong),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(onPressed: (){
                  if (myQuiz.quiz[widget.index].answer == true)
                    setState(() {
                      isCorrect = true;
                      isWrong = false;
                    });
                  else
                    setState(() {
                      isCorrect = false;
                      isWrong = true;
                    });;
                },
                  child: Container(
                    width: 180.0,
                    height: 70.0,
                    child: Center(
                      child: Text(
                        "True", style: TextStyle(fontSize: 35.0),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),MaterialButton(onPressed: (){
                    if (myQuiz.quiz[widget.index].answer == false)
                      setState(() {
                        isCorrect = true;
                        isWrong = false;
                    });
                    else
                      setState(() {
                        isCorrect = false;
                        isWrong = true;
                    });;
                },
                  child: Container(
                    width: 180.0,
                    height: 70.0,
                    child: Center(
                      child: Text(
                        "False", style: TextStyle(fontSize: 35.0),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ],
            ),
            MaterialButton(
              onPressed: (){
                if(widget.index + 1 < Quiz().quiz.length)
                  Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionScreen(widget.index + 1) ));
                else
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FinalScreen() ));
              },
              child: Container(
                width: 200.0,
                height: 70.0,
                child: Center(
                  child: Text(
                    "Next", style: TextStyle(fontSize: 35.0),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
