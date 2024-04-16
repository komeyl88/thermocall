import 'package:flutter/material.dart';
import 'package:thermocall/login/view/inputemail.dart';
import 'package:thermocall/login/view/inputpassword.dart';
import 'package:thermocall/login/view/inputrepeatpassword.dart';

import 'login.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Email",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 16,
            ),
            InputEmail(),
            SizedBox(height: 32),
            Text(
              "Create Password",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 16,
            ),
            InputPassword(),
            SizedBox(height: 32),
            Text(
              "Repeat Password",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 16,
            ),
            InputRepeatPassword(),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Register",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black87,
                minimumSize: Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

          Spacer(),

            Center(
              child: Text(
                "Already have an account?",
                style: TextStyle(color: Colors.black54),
              ),
            ),

            SizedBox(height: 16), // Additional spacing for better layout

            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: Colors.black87,
                    width: 2.0,
                  ),
                ),
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildPasswordVisibilityIcon() {
  return GestureDetector(
    onTap: () {},
    child: Icon(
      Icons.visibility,
      color: Colors.grey,
    ),
  );
}
