import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final IconData icon;
  final String labelText;
  final TextEditingController controller;
  final String value;
  final ValueChanged<String> onValueChanged;

  const TextInputField({
    super.key,
    required this.value,
    required this.controller,
    required this.onValueChanged,
    required this.icon,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(icon: Icon(icon), labelText: labelText),
      controller: controller,
      onChanged: onValueChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }
}
