import 'package:app02/question.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswer=[];
  Widget? activeScreen;

  void chooseAnswer(String answer){
    selectedAnswer.add(answer);
  }

  @override
  void initState() {
    super.initState();
    activeScreen = Home(switchScreen);
  }

  void switchScreen(){
    setState(() {
      activeScreen = Question(chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.greenAccent,
            ]),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
