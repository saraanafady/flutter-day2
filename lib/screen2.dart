import 'package:flutter/material.dart';
import '../components/button.dart';
import '../components/text_field.dart'; // This should be your updated CustomTextField
import '../components/social_button.dart';
import '../components/checkbox.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Make texts aligned left
            children: <Widget>[
              const Text(
                'Welcome Back.',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              const Text(
                "Let's sign in",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),

              const SizedBox(height: 30),

              // Email Text Field
              CustomTextField(
                hintText: 'Email',
                icon: Icons.email, // <-- Pass email icon here
              ),

              const SizedBox(height: 20),

              // Password Text Field
              CustomTextField(
                hintText: 'Password',
                isPassword: true,
                icon: Icons.lock, // <-- Pass lock icon here
              ),

              const SizedBox(height: 10),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {}, 
                  child: const Text(
                    'Recover Password',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Checkbox
              const CheckboxWithLabel(label: 'Remember Me'),

              const SizedBox(height: 16),

              // Sign In Button
              CustomButton(
                text: 'Sign In',
                onPressed: () {},
                backgroundColor: const Color.fromARGB(235, 170, 2, 80),
              ),

              const SizedBox(height: 14),

              // Social Buttons
              SocialButton(
                text: 'Sign in with Google',
                imagePath: 'assets/google.png',
                onPressed: () {},
              ),

              const SizedBox(height: 14),

              SocialButton(
                text: 'Sign in with Facebook',
                imagePath: 'assets/facebook.png',
                onPressed: () {},
              ),

              const SizedBox(height: 20),

              // Bottom Sign Up Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {}, // navigate to sign up
                    child: const Text(
                      'Sign up!',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
