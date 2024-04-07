import 'package:flutter/material.dart';

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
            SizedBox(height: 32),
            Text(
              "Create Password",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                hintText: "Enter your password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                suffixIcon: _buildPasswordVisibilityIcon(),
              ),
            ),
            SizedBox(height: 32),
            Text(
              "Repeat Password",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                hintText: "Repeat your password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                suffixIcon: _buildPasswordVisibilityIcon(),
              ),
            ),
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

            SizedBox(height: 100),

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
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
