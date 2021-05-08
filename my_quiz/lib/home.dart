import 'package:flutter/material.dart';
import 'package:my_quiz/question_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Welcome to the quiz",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20.0
                ),
              ),
              MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionScreen(0) ));
                  },
                child: Container(
                  width: 200.0,
                  height: 70.0,
                  child: Center(
                    child: Text(
                      "Start Quiz", style: TextStyle(fontSize: 35.0),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}
