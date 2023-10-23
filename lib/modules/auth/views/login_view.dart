import 'package:ecom_firebase/constant/dimens.dart';
import 'package:ecom_firebase/views/Third_Screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String password = '';
  String email = '';

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Dimens.boxHeight60,
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              hintText: 'Enter your Eamil',
            ),
          ),
          Dimens.boxHeight10,
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              hintText: 'Enter your paswrord',
            ),
          ),
          Dimens.boxHeight15,
          ElevatedButton(
              onPressed: () {
                firebaseAuth.signInWithEmailAndPassword(
                    email: _emailController.text, password: _passwordController.text);
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ThirdScreen(),
                    ));
              },

              child: Text('Login to Continue'))
        ]),
      ),
    );
  }
}
