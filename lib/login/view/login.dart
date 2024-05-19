import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';  // اضافه کردن بسته fluttertoast
import 'package:thermocall/home/view/home.dart';
import 'package:thermocall/login/bloc/login_bloc.dart';
import 'package:thermocall/login/bloc/login_event.dart';
import 'package:thermocall/login/bloc/login_state.dart';
import 'package:thermocall/login/view/inputemail.dart';
import 'package:thermocall/login/view/inputpassword.dart';
import 'package:thermocall/login/view/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  void showCustomToast(String message) {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.red,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.error, color: Colors.white),
          SizedBox(width: 12.0),
          Text(message, style: TextStyle(color: Colors.white)),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      toastDuration: Duration(seconds: 3),
      positionedToastBuilder: (context, child) {
        return Positioned(
          top: 50.0,
          left: MediaQuery.of(context).size.width * 0.1,
          right: MediaQuery.of(context).size.width * 0.1,
          child: child,
        );
      },
      fadeDuration: Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(),
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.status == true) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home_Page()),
            );
          } else if (state.status == false) {
            showCustomToast('Login failed!');
          }
        },
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InputEmail(
                  onChange: (value) {
                    context.read<LoginBloc>().add(LoginUsernameChanged(value));
                  },
                ),
                const SizedBox(height: 32.0),
                InputPassword(
                  onChange: (value) {
                    context.read<LoginBloc>().add(LoginPasswordChanged(value));
                  },
                ),
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
                  onPressed: () {
                    context.read<LoginBloc>().add(const LoginSubmitted());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    minimumSize: const Size(double.infinity, 60.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 450,
                ),
                const Center(
                  child: Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 60.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(color: Colors.black87, width: 2.0),
                    ),
                  ),
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
