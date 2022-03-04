// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quickie/forms/sign_in_form.dart';
import 'package:quickie/forms/sign_up_form.dart';
import 'package:quickie/functions.dart';

class StartForm extends StatelessWidget {
  StartForm({Key? key}) : super(key: key);
  static String id = "StartForm";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Container(
        color: Colors.orange.shade300,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/q.png", height: 200),
            SizedBox(
              child: SizedBox(height: 75),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, SignInForm.id, (route) => false);
                },
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.orange.shade900),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  pObscure = true;
                  cpObscure = true;
                  Navigator.pushNamedAndRemoveUntil(
                      context, SignUpForm.id, (route) => false);
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.orange.shade900),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
