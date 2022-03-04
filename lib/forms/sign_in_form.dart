// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, implementation_imports, avoid_print

import 'package:flutter/material.dart';
import 'package:quickie/forms/main_form.dart';
import 'package:quickie/forms/sign_up_form.dart';
import 'package:quickie/forms/start_form.dart';
import 'package:quickie/functions.dart';

class SignInForm extends StatefulWidget {
  static String id = "SignInForm";

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange.shade900,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, StartForm.id, (route) => false);
          },
          icon: Icon(Icons.close),
        ),
        title: Text("Sign In"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.person),
                  labelText: "Email",
                ),
              ),
              TextField(
                controller: passwordController,
                obscureText: pObscure,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        if (pObscure == false) {
                          pObscure = true;
                        } else if (pObscure == true) {
                          pObscure = false;
                        }
                      });
                    },
                    icon: pObscure
                        ? Icon(Icons.remove_red_eye_outlined)
                        : Icon(Icons.remove_red_eye),
                  ),
                  labelText: "Password",
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.orange.shade300),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    if (emailController.text.isEmpty) {
                      functions.errorBox(
                          context, "Please enter an email address");
                    } else if (!emailController.text
                        .contains("@psu.palawan.edu.ph")) {
                      functions.errorBox(
                          context, "Please enter your corporate email");
                    } else if (emailController.text != "" &&
                        emailController.text !=
                            "202040094@psu.palawan.edu.ph" &&
                        emailController.text !=
                            "2018100037n@psu.palawan.edu.ph" &&
                        emailController.text !=
                            "2018100147n@psu.palawan.edu.ph" &&
                        emailController.text !=
                            "2018100190n@psu.palawan.edu.ph" &&
                        emailController.text !=
                            "2018100052n@psu.palawan.edu.ph" &&
                        emailController.text !=
                            "2018100022n@psu.palawan.edu.ph" &&
                        emailController.text !=
                            "2018100080n@psu.palawan.edu.ph" &&
                        emailController.text !=
                            "2018100003n@psu.palawan.edu.ph" &&
                        emailController.text !=
                            "2018100109@psu.palawan.edu.ph" &&
                        emailController.text !=
                            "2018100114n@psu.palawan.edu.ph" &&
                        emailController.text !=
                            "2018105660n@psu.palawan.edu.ph" &&
                        emailController.text !=
                            "2018100308n@psu.palawan.edu.ph" &&
                        emailController.text !=
                            "2018100237n@psu.palawan.edu.ph" &&
                        emailController.text !=
                            "2018100202n@psu.palawan.edu.ph" &&
                        emailController.text !=
                            "2018100280n@psu.palawan.edu.ph" &&
                        emailController.text !=
                            "2018100125n@psu.palawan.edu.ph" &&
                        emailController.text !=
                            "2018100294n@psu.palawan.edu.ph" &&
                        emailController.text !=
                            "2018100304n@psu.palawan.edu.ph") {
                      functions.errorBox(
                          context, "Corporate email is not recognized");
                    } else if (passwordController.text.isEmpty) {
                      functions.errorBox(context, "Please enter your password");
                    } else if (passwordController.text.length < 8) {
                      functions.errorBox(
                          context, "Must contain at least 8 characters");
                    } else if (!passwordController.text
                        .contains(RegExp(r'[a-z]'))) {
                      functions.errorBox(
                          context, "Must contain at least 1 lowercase");
                    } else if (!passwordController.text
                        .contains(RegExp(r'[A-Z]'))) {
                      functions.errorBox(
                          context, "Must contain at least 1 uppercase");
                    } else if (!passwordController.text
                        .contains(RegExp(r'[0-9]'))) {
                      functions.errorBox(
                          context, "Must contain at least 1 number");
                    } else if (!passwordController.text
                        .contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                      functions.errorBox(
                          context, "Must contain at least 1 symbol");
                    } else {
                      functions.signIn(
                        context,
                        emailController.text,
                        passwordController.text,
                      );
                      Navigator.pushNamedAndRemoveUntil(
                          context, MainForm.id, (route) => false);
                    }
                  },
                  child: Text("Sign in"),
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                height: 30,
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, SignUpForm.id, (route) => false);
                  },
                  child: Text("Create a new account"),
                ),
              ),
              SizedBox(
                height: 30,
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    if (emailController.text.length == 28 ||
                        emailController.text.length == 30) {
                      functions.notErrorBox(context,
                          "We have sent a reset password link to your corporate email where you can create your new password.");
                      functions.resetPassword(emailController.text);
                    }
                  },
                  child: Text("Reset Password"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
