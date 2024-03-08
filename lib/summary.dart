import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Summary extends StatelessWidget {
  const Summary(this.summaryData,{super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...summaryData.map((e) => Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor:
                    e['user_answer']==e['correct_answer']?
                    Colors.green:Colors.red,
                    child: Text(
                      ((e['question_index'] as int) + 1).toString(),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Text(e['question'].toString(),
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(e['user_answer'].toString(),
                          style: const TextStyle(
                            color: Color(0xFFE57373),
                          ),
                        ),
                        Text(e['correct_answer'].toString(),
                          style: const TextStyle(
                            color: Color(0xFFFFD54F),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
