import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  const OptionButton(this.option, this.onTap, {super.key});
  final String option;
  final void Function() onTap;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          backgroundColor: Colors.purple.shade600,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          )),
      child: Text(
        option,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white70,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
