import 'package:flutter/material.dart';

// ignore: camel_case_types
class home extends StatelessWidget {
  const home(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/JP.jpg'),
          radius: 100,
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Welcome To My Quiz App",
          style: TextStyle(
            color: Colors.white60,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        OutlinedButton(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.yellow.shade300,
          ),
          child: Text(
            "Chaliye Shuru Karte Hai",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.orange.shade800,
            ),
          ),
        )
      ],
    ));
  }
}
