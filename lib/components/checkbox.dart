import 'package:flutter/material.dart';

class CheckboxWithLabel extends StatefulWidget {
  final String label;

  const CheckboxWithLabel({super.key, required this.label});

  @override
  State<CheckboxWithLabel> createState() => _CheckboxWithLabelState();
}

class _CheckboxWithLabelState extends State<CheckboxWithLabel> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value ?? false;
            });
          },
        ),
        Text(widget.label),
      ],
    );
  }
}
