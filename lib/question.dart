import 'package:app02/answer_button.dart';
import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Question 1'),
          const SizedBox(height: 30,),
          AnswerButton(answerText: 'Answer1', onPressed: (){}),
          const SizedBox(height: 30,),
          AnswerButton(answerText: 'Answer2', onPressed: (){}),
          const SizedBox(height: 30,),
          AnswerButton(answerText: 'Answer3', onPressed: (){}),
          const SizedBox(height: 30,),
          AnswerButton(answerText: 'Answer4', onPressed: (){}),
        ],
      ),
    );
  }
}
