import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormField extends StatelessWidget {
  final String labelText;
  final DateTime? selectedDate;
  final Function(DateTime) onDateSelected;

  const DateFormField({
    super.key,
    required this.labelText,
    required this.selectedDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    var formattedDate = selectedDate != null
        ? DateFormat('yyyy-MM-dd').format(selectedDate!)
        : '';

    return TextFormField(
      readOnly: true,
      onTap: () {
        _showDatePicker(context);
      },
      controller: TextEditingController(text: formattedDate),
      decoration: InputDecoration(
        icon: const Icon(Icons.calendar_month),
        labelText: labelText,
      ),
      validator: (value) {
        if (selectedDate == null) {
          return 'Please select a date';
        }
        return null;
      },
    );
  }

  Future<void> _showDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(DateTime.now().year),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      onDateSelected(picked);
    }
  }
}
