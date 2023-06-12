import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeInputField extends StatelessWidget {
  final String labelText;
  final TimeOfDay value;
  final ValueChanged<TimeOfDay> onValueChanged;

  const TimeInputField({
    super.key,
    required this.value,
    required this.labelText,
    required this.onValueChanged,
  });

  @override
  Widget build(BuildContext context) {
    var formattedTime = "${value.hour.toString().padLeft(2, '0')}${value.minute.toString().padLeft(2, '0')}";

    return TextFormField(
      readOnly: true,
      onTap: () {
        _showTimePicker(context);
      },
      controller: TextEditingController(text: formattedTime),
      decoration: InputDecoration(
        icon: const Icon(Icons.access_time_outlined),
        labelText: labelText,
      ),
      validator: (value) {
        if (value == null) {
          return 'Please select a time';
        }
        return null;
      },
    );
  }

  Future<void> _showTimePicker(BuildContext context) async {
    final TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: value);

    if (picked != null) {
      onValueChanged(picked);
    }
  }
}
