import 'package:flutter/material.dart';
import 'package:salesapp/welcomepage.dart';
import 'package:salesapp/WelcomePage/custombttn.dart';
import 'package:salesapp/WelcomePage/customtextfield.dart';
import 'package:salesapp/Login.dart';
import 'WelcomePage/Background.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
// pic1
                Image.asset(
                  'assets/images/icon.png',
                  height: 200,
                  width: 200,
                ),
                const SizedBox(height: 20),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
//text1
                    Text(
                      'UNITI ASIA SALES REPORT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        height: 2.0,
                      ),
                    ),
                    SizedBox(height: 8),
//text2
                    Text(
                      'Register Here',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        height: 2.0,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

// Text Fields (Using CustomTextField now)
                const CustomTextField(
                  label: 'Username',
                  icon: Icons.person,
                ),
                const SizedBox(height: 15),

                const CustomTextField(
                  label: 'Email',
                  icon: Icons.email,
                ),
                const SizedBox(height: 15),

                const CustomTextField(
                  label: 'Password',
                  icon: Icons.lock,
                  isPassword: true,
                ),
                const SizedBox(height: 15),

                const CustomTextField(
                  label: 'Confirm Password',
                  icon: Icons.lock,
                  isConfirmPassword: true,
                ),
                const SizedBox(height: 20),
// Button
                CustomButton(
                  text: ' Register ',
                  color: const Color.fromARGB(255, 158, 44, 44),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomePage()),
                    );
                  },
                ),

                const SizedBox(height: 30),

// Footer
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: const Text(
                        "Login Here",
                        style: TextStyle(
                          color: Color(0xFF9E2C2C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
