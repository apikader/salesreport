import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final IconData icon;
  final bool obscureText;
  final bool isPassword;
  final bool isConfirmPassword;
  final TextEditingController controller; // Add controller

  const CustomTextField({
    Key? key,
    required this.label,
    required this.icon,
    this.obscureText = false,
    this.isPassword = false,
    this.isConfirmPassword = false,
    required this.controller, // Controller added here
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller, // Bind the controller to the TextField
      obscureText: widget.isPassword
          ? !_isPasswordVisible
          : (widget.isConfirmPassword
              ? !_isConfirmPasswordVisible
              : widget.obscureText),
      decoration: InputDecoration(
        labelText: widget.label,
        prefixIcon: Icon(widget.icon, color: const Color(0xFF9E2C2C)),
        suffixIcon: (widget.isPassword || widget.isConfirmPassword)
            ? IconButton(
                icon: Icon(
                  widget.isPassword
                      ? (_isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off)
                      : (_isConfirmPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                  color: const Color(0xFF9E2C2C),
                ),
                onPressed: () {
                  setState(() {
                    if (widget.isPassword) {
                      _isPasswordVisible = !_isPasswordVisible;
                    } else if (widget.isConfirmPassword) {
                      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                    }
                  });
                },
              )
            : null,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(color: Color(0xFF9E2C2C), width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(color: Color(0xFF9E2C2C), width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(color: Colors.grey, width: 1),
        ),
        labelStyle: const TextStyle(
          color: Color(0xFF9E2C2C),
          fontWeight: FontWeight.bold,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
      ),
    );
  }
}
