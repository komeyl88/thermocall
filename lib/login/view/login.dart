import 'package:flutter/material.dart';
import 'package:thermocall/login/view/inputemail.dart';
import 'package:thermocall/login/view/inputpassword.dart';
import 'package:thermocall/login/view/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;

  Widget _buildPasswordVisibilityIcon() {
    return IconButton(
      icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
      onPressed: () => setState(() => _obscureText = !_obscureText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Email',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 16.0),
            InputEmail(),
            const SizedBox(height: 32.0),
            const Text(
              'Password',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 16.0),
            InputPassword(),
            const SizedBox(height: 16.0),
            const Text(
              'Forgot password?',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 14.0,
              ),
              textAlign: TextAlign.right,
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () async {
                // Implement login logic here
                // (form validation, API call, etc.)
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black87,
                minimumSize: const Size(double.infinity, 60.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            Spacer(),
            Center(
              child: const Text(
                "Don't have a account?",
                style: TextStyle(color: Colors.black54),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
              child: const Text(
                "Register",
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 60.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(color: Colors.black87, width: 2.0),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}