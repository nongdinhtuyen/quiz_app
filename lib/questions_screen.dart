import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.chooseAnswer, {super.key});

  final void Function(String answers) chooseAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  _QuestionsScreenState();
  var currentIndex = 0;

  void answersQuestion(e) {
    widget.chooseAnswer(e);
    if (questions.length - 1 > currentIndex) {
      setState(() {
        currentIndex++;
      });
    }
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ...currentQuestion.answers.map((e) => ElevatedButton(
                  onPressed: () => answersQuestion(e),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Text(e),
                )),
          ],
        ),
      ),
    );
  }
}
