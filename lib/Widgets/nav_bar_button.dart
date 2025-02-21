import 'package:flutter/material.dart';

class AppointmentButton extends StatelessWidget {
  const AppointmentButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: TextButton(
        // Use TextButton for outlined look
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.black, width: 1),
          ),
        ),
        child: Text(text, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}
