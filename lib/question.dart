import 'package:app02/answer_button.dart';
import 'package:app02/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatefulWidget {
  const Question(this.onSelectedAnswer,{super.key});

  final void Function(String) onSelectedAnswer;

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  var currentQuestionIndex=0;

  void answersQuestion(String answer){
    widget.onSelectedAnswer(answer);
    setState(() {
      currentQuestionIndex+= 1;
    });
  }
  @override
  Widget build(BuildContext context) {
  final currentQuestion=questions[currentQuestionIndex];
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(currentQuestion.text,
            style: GoogleFonts.poppins(color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,),
          const SizedBox(height: 30,),
          ... currentQuestion.getShuffledAnswers().map((e) =>
              Container(
                margin: const EdgeInsets.all(5),
              child: AnswerButton(answerText: e, onPressed: (){
                answersQuestion(e);
              }))
          ),
        ],
      ),
    );
  }
}
