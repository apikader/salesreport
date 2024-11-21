import 'package:flutter/material.dart';
import 'package:salesapp/welcomepage.dart';
import 'package:salesapp/WelcomePage/custombttn.dart';
import 'package:salesapp/WelcomePage/customtextfield.dart';
import 'package:salesapp/Login.dart';
import 'package:salesapp/WelcomePage/Background.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  // Method to validate email and passwords
  bool _validateInputs() {
    if (_usernameController.text.isEmpty) {
      _showSnackBar('Please enter a username');
      return false;
    } else if (_emailController.text.isEmpty ||
        !_emailController.text.contains('@')) {
      _showSnackBar('Please enter a valid email');
      return false;
    } else if (_passwordController.text.isEmpty ||
        _passwordController.text.length < 6) {
      _showSnackBar('Password must be at least 6 characters');
      return false;
    } else if (_confirmPasswordController.text != _passwordController.text) {
      _showSnackBar('Passwords do not match');
      return false;
    }
    return true;
  }

  // Method to show SnackBar
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: AppBar(
        //   leading: IconButton(
        //     icon: const Icon(Icons.arrow_back),
        //     onPressed: () {
        //       Navigator.pushReplacement(
        //         context,
        //         MaterialPageRoute(builder: (context) => const WelcomePage()),
        //       );
        //     },
        //   ),
        //   title: const Text('Sign Up'),
        //   backgroundColor: const Color(0xFF9E2C2C),
        // ),
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
                CustomTextField(
                  controller: _usernameController,
                  label: 'Username',
                  icon: Icons.person,
                ),
                const SizedBox(height: 15),

                CustomTextField(
                  controller: _emailController,
                  label: 'Email',
                  icon: Icons.email,
                ),
                const SizedBox(height: 15),

                CustomTextField(
                  controller: _passwordController,
                  label: 'Password',
                  icon: Icons.lock,
                  isPassword: true,
                ),
                const SizedBox(height: 15),

                CustomTextField(
                  controller: _confirmPasswordController,
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
                    if (_validateInputs()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomePage(),
                        ),
                      );
                    }
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
                            builder: (context) => const LoginPage(),
                          ),
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
