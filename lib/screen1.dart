import 'package:flutter/material.dart';
import 'package:day2/components/button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                 Center(child: Image.asset(
                    'assets/image.png',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                 ),
                  SizedBox(height: 30),
                  Text(
                    'Enterprise Team Management',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'With an extensive menu prepared by talented chefs. Fresh quality food.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 40),
                  CustomButton(
                    text: 'Sign Up',
                    backgroundColor: const Color.fromARGB(
                      235,
                      170,
                      2,
                      80,
                    ), // Add the required backgroundColor
                    onPressed: () {},
                  ),
                  SizedBox(height: 14),
                  CustomButton(
                    text: 'Already have an account',
                    backgroundColor: const Color.fromARGB(
                      235,
                      198,
                      198,
                      198,
                    ), // Set the background color to grey
                    onPressed: () {
                      // Navigate to Login screen
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
