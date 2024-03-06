import 'package:app02/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Results extends StatelessWidget {
  const Results(this.selectedAnswer,{super.key});

  final List<String> selectedAnswer;

  List<Map<String,Object>> getSummaryData(){
    final List<Map<String,Object>> summary = [];

    for(var i = 0;i<selectedAnswer.length ; i++){
      summary.add({
        'Question_index' : i,
        'Question' : questions[i].text,
        'Correct_answer' : questions[i].answers[0],
        'User_answer' : selectedAnswer[i],
      });
    }
    return summary;
}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('You answered 3 of 6 questions Correctly',
            style: GoogleFonts.poppins(color: Colors.blueGrey,
                fontSize: 24,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,),
          const SizedBox(height: 30,),
          ...getSummaryData().map((e) => Column(
            children: [
              Text(e['Question_index'].toString(),),
              Text(e['Question'].toString(),),
              Text(e['Correct_answer'].toString(),),
              Text(e['User_answer'].toString(),),
            ],
          )),
          const SizedBox(height: 30,),
          TextButton(onPressed: (){}, child: const Text('Restart Quiz!'))
        ],
      ),
    );
  }
}
