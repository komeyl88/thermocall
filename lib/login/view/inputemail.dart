import 'package:flutter/material.dart';

class InputEmail extends StatefulWidget {
  const InputEmail({Key? key}) : super(key: key);

  @override
  State<InputEmail> createState() => _InputEmailState();
}

class _InputEmailState extends State<InputEmail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.black54),
        ),
        SizedBox(
          height: 16,
        ),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            hintText: "Enter your email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
