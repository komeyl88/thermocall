import 'package:flutter/material.dart';

class InputRepeatPassword extends StatefulWidget {
  const InputRepeatPassword({super.key});

  @override
  State<InputRepeatPassword> createState() => _InputRepeatPasswordState();
}

class _InputRepeatPasswordState extends State<InputRepeatPassword> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
          hintText: "Repeat your password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey),
          ),
          suffixIcon: Icon(Icons.visibility, color: Colors.grey,)
      ),
    );
  }
}