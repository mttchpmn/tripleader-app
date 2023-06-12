import 'package:flutter/material.dart';

class DropdownInputField<T extends Enum> extends StatelessWidget {
  final IconData icon;
  final String labelText;
  final T value;
  final List<T> items;
  final ValueChanged<T> onValueChanged;

  const DropdownInputField({
    super.key,
    required this.value,
    required this.items,
    required this.onValueChanged,
    required this.icon,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    var availableItems = items
        .map((e) => DropdownMenuItem(
              value: e.index,
              child: Text(e.name),
            ))
        .toList();

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Icon(icon),
        ),
        Expanded(
          child: DropdownButtonFormField(
              decoration: InputDecoration(labelText: labelText),
              items: availableItems,
              onChanged: (value) {
                var result = value as T;

                onValueChanged(result);
              }),
        ),
      ],
    );
  }
}
