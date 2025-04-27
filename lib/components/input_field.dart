// import 'package:flutter/material.dart';

// class CustomInputField extends StatelessWidget {
//   final IconData icon;
//   final String hintText;
//   final bool obscureText;

//   const CustomInputField({
//     required this.icon,
//     required this.hintText,
//     this.obscureText = false,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       obscureText: obscureText,
//       decoration: InputDecoration(
//         prefixIcon: Icon(icon),
//         hintText: hintText,
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool obscureText;

  const CustomInputField({
    required this.icon,
    required this.hintText,
    this.obscureText = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0), // Adjust padding if needed
          child: Icon(
            icon,
            size: 24, // Customize icon size
            color: Colors.grey, // Customize icon color
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
