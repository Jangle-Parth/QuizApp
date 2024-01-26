import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Jai Shree Ram"),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: const Text("Jai Shri Ram")),
          ],
        ),
      ),
    );
  }
}
