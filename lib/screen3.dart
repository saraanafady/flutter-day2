import 'package:flutter/material.dart';
import '../components/button.dart';
import '../components/text_field.dart';
import '../components/social_button.dart';
import '../components/checkbox.dart';
import '../components/paymen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome Back.',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                const Text(
                  "Let's sign up",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 30),
                const CustomTextField(hintText: 'Full Name',
                  icon: Icons.person,    ),
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
                const CustomTextField(
                  hintText: 'Confirm Password',
                  isPassword: true,
                  icon: Icons.lock, // <-- Pass lock icon here
                ),
                const CheckboxWithLabel(label: 'Checkbox Label'),
                const SizedBox(height: 20),
                const PaymentCardWithSlider(
                  initialAmount: 100,
                  currency: 'USD',
                  minAmount: 10,
                  maxAmount: 1000,
                ),
                const SizedBox(height: 25),
                CustomButton(
                  text: 'Sign Up',
                  onPressed: () {},
                  backgroundColor: const Color.fromARGB(235, 170, 2, 80)
                ),
                const SizedBox(height: 20),
             SocialButton(
  text: 'Sign in with Google',
  imagePath: 'assets/google.png', 
  onPressed: () {},
),
    const SizedBox(height: 20),
           SocialButton(
  text: 'Sign in with FaceBook',
  imagePath: 'assets/facebook.png', 
  onPressed: () {},
),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    GestureDetector(
                      onTap: () {}, 
                      child: const Text(
                        'Sign in!',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20), 
              ],
            ),
          ),
        ),
      ),
    );
  }
}
