import 'package:app02/data/questions.dart';
import 'package:app02/summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Results extends StatelessWidget {
  const Results(this.selectedAnswer, {Key? key}) : super(key: key);

  final List<String> selectedAnswer;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    var numOfCorrect = 0;
    for (var i = 0; i < summaryData.length; i++) {
      if(summaryData[i]['user_answer']==summaryData[i]['correct_answer']){
        numOfCorrect+=1;
      }
    };
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('You answered $numOfCorrect of ${questions.length} questions Correctly',
            style: GoogleFonts.poppins(
              color: Colors.blueGrey,),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Summary(summaryData),
          const SizedBox(height: 20),
          TextButton.icon(
            onPressed: () {
            },
            icon: const Icon(Icons.restart_alt_outlined, color: Colors.white),
            label: const Text(
              'Restart Quiz!',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
