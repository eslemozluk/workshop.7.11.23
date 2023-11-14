import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 35, 92, 58),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/icon.png"),
            const Text(
              "Quiz App",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            OutlinedButton.icon(
                onPressed: () {
                  startQuiz();
                },
                icon: const Icon(
                  Icons.arrow_right_alt,
                ),
                label: const Text("start"),
                style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 54, 145, 90),
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.white),
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5))),
          ],
        ),
      ),
    );
  }
}
