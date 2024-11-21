import 'package:flutter/material.dart';
import 'package:salesapp/Login.dart';
import 'package:salesapp/Signup.dart';
import 'package:salesapp/WelcomePage/Background.dart';
import 'package:salesapp/WelcomePage/custombttn.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
// Text1
              const Text(
                'Collaborated With',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 0),
// Image 1
              Image.asset(
                'assets/images/collab.png',
                height: 50,
                width: 180,
              ),
// Image 2
              Image.asset(
                'assets/images/icon.png',
                height: 200,
                width: 200,
              ),

              SizedBox(height: 10),
// Text2
              const Text(
                'WELCOME\nUNITI ASIA SALES REPORT',
                textAlign:
                    TextAlign.center, // Centers the text within the Text widget
                style: TextStyle(
                  fontSize: 18, // Adjust the font size as needed for emphasis
                  fontWeight: FontWeight.bold,
                  height: 2.0,
                ),
              ),

              SizedBox(height: 20),

// Buttons
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    text: ' Login ',
                    color: const Color.fromARGB(255, 158, 44, 44),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomButton(
                    text: 'Sign Up',
                    color: const Color.fromARGB(255, 158, 44, 44),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()),
                      );
                    },
                  ),
                ],
              ),

              const SizedBox(height: 50),

// Footer Text
              const Text(
                'Copyright © 2024 UnitiOffice.com',
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
