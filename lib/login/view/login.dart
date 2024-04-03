import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                hintText: "Enter your email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Create Password',
                contentPadding: EdgeInsets.symmetric(horizontal: 30.0),
                hintText: "Enter your password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                suffixIcon: _buildPasswordVisibilityIcon(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Repeat Password',
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                hintText: "Repeat your password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                suffixIcon: _buildRepeatPasswordVisibilityIcon(),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Register",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
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

            SizedBox(height: 20),

            Center(
              child: Text(
                "Already have an account?",
                style: TextStyle(color: Colors.grey),
              ),
            ),

            SizedBox(height: 10), // Additional spacing for better layout

            ElevatedButton(
              onPressed: () {}, // Handle login button press
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
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

  Widget _buildRepeatPasswordVisibilityIcon() {
    return GestureDetector(
      onTap: () {},
      child: Icon(
        Icons.visibility,
        color: Colors.grey,
      ),
    );
  }
