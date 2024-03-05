import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatelessWidget {
  const Home(this.switchScreen,{super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',width: 300,
          color: Colors.white.withOpacity(0.65),),
          const SizedBox(height: 80,),
          Text('Learn Flutter',
              style: GoogleFonts.poppins(
                  color: Colors.white.withOpacity(0.65),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 50,),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white.withOpacity(0.65)
            ),
              onPressed: (){
              switchScreen();
              },
              icon: const Icon(Icons.arrow_forward_ios_rounded),
              label: const Text('Start Quiz'))
        ],
      ),
    );
  }
}
