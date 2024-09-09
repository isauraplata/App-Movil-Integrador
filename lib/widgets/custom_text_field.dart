import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Function(String) onChanged;

  CustomTextField({required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Enter something',
        border: OutlineInputBorder(),
      ),
      onChanged: onChanged,
    );
  }
}
