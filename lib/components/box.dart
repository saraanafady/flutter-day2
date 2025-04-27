import 'package:flutter/material.dart';

class SectionBox extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const SectionBox({
    required this.title,
    required this.children,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple)),
          SizedBox(height: 10),
          ...children,
        ],
      ),
    );
  }
}
