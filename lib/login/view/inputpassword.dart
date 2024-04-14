import 'package:flutter/material.dart';

class InputPassword extends StatefulWidget {
  const InputPassword({super.key});

  @override
  State<InputPassword> createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
          hintText: "Enter your password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey),
          ),
          suffixIcon: Icon(Icons.visibility, color: Colors.grey,)
      ),
    );
  }
}