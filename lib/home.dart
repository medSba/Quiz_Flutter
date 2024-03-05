import 'package:flutter/material.dart';


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
          const Text('Learn Flutter',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),),
          const SizedBox(height: 50,),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white
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
