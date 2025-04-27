import 'package:flutter/material.dart';
import 'screen1.dart';
// import'screen2.dart';
// import 'screen3.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
      //  home: SignUpScreen(),
      //  home: SignInScreen(),
    );
  }
}