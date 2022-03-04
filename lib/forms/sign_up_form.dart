// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quickie/forms/sign_in_form.dart';
import 'package:quickie/forms/start_form.dart';
import 'package:quickie/functions.dart';
import 'package:quickie/policies/privacy_policy.dart';
import 'package:quickie/policies/terms_and_conditions.dart';

class SignUpForm extends StatefulWidget {
  static String id = "SignUpForm";

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange.shade900,
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, StartForm.id, (route) => false);
            },
            icon: Icon(Icons.close),
          ),
          centerTitle: true,
          title: Text("Sign Up")),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Corporate Email",
                    ),
                  ),
                  TextField(
                    maxLength: 13,
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      counter: Offstage(),
                    ),
                  ),
                  siblings
                      ? Column(
                          children: [
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: "Sibling Name 1",
                              ),
                            ),
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: "Sibling Name 2",
                              ),
                            ),
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: "Sibling Name 3",
                              ),
                            ),
                          ],
                        )
                      : SizedBox(),
                  TextField(
                    controller: passwordController,
                    obscureText: pObscure,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
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
                  TextField(
                    controller: cPasswordController,
                    obscureText: cpObscure,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(
                            () {
                              if (cpObscure == false) {
                                cpObscure = true;
                              } else if (cpObscure == true) {
                                cpObscure = false;
                              }
                            },
                          );
                        },
                        icon: cpObscure
                            ? Icon(Icons.remove_red_eye_outlined)
                            : Icon(Icons.remove_red_eye),
                      ),
                      labelText: "Confirm Password",
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 30,
                      ),
                      SizedBox(
                        height: 35,
                        child: Checkbox(
                            value: siblings,
                            onChanged: (value) {
                              if (siblings == false) {
                                setState(() {
                                  siblings = true;
                                });
                              } else if (siblings == true) {
                                setState(() {
                                  siblings = false;
                                });
                              }
                            }),
                      ),
                      Text("I have siblings also studying in PSU Narra"),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 30,
                      ),
                      SizedBox(
                        height: 35,
                        child: Checkbox(
                            value: tcBox,
                            onChanged: (value) {
                              if (tcBox == false) {
                                setState(() {
                                  tcBox = true;
                                });
                              } else if (tcBox == true) {
                                setState(() {
                                  tcBox = false;
                                });
                              }
                            }),
                      ),
                      Text("I agree to the"),
                      SizedBox(
                        height: 40,
                        child: TextButton(
                          onPressed: () {
                            setState(
                              () {
                                showTC = true;
                                showBG = true;
                                showPP = false;
                              },
                            );
                          },
                          child: Text("terms and conditions"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 30,
                      ),
                      SizedBox(
                        height: 35,
                        child: Checkbox(
                            value: ppBox,
                            onChanged: (value) {
                              if (ppBox == false) {
                                setState(() {
                                  ppBox = true;
                                });
                              } else if (ppBox == true) {
                                setState(() {
                                  ppBox = false;
                                });
                              }
                            }),
                      ),
                      Text("I agree to the"),
                      SizedBox(
                        height: 35,
                        child: TextButton(
                          onPressed: () {
                            setState(
                              () {
                                showTC = false;
                                showBG = true;
                                showPP = true;
                              },
                            );
                          },
                          child: Text("privacy policy"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: tcBox == true && ppBox == true
                            ? MaterialStateProperty.all(Colors.orange.shade300)
                            : MaterialStateProperty.all(Colors.grey.shade400),
                      ),
                      onPressed: () {
                        if (tcBox == true && !ppBox == true ||
                            !tcBox == true && ppBox == true ||
                            !tcBox == true && !ppBox == true) {
                          null;
                        } else if (emailController.text.isEmpty) {
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
                        } else if (phoneController.text.isEmpty) {
                          functions.errorBox(
                              context, "Please enter your number");
                        } else if (!phoneController.text.contains("+63")) {
                          functions.errorBox(
                              context, 'Phone number must start with "+63"');
                        } else if (phoneController.text.length < 13) {
                          functions.errorBox(
                              context, "Please enter a valid phone number");
                        } else if (passwordController.text.isEmpty) {
                          functions.errorBox(
                              context, "Please enter your password");
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
                        } else if (cPasswordController.text.isEmpty) {
                          functions.errorBox(
                              context, "Please confirm your password");
                        } else if (cPasswordController.text !=
                            passwordController.text) {
                          functions.errorBox(context, "Passwords do not match");
                        } else if (tcBox == false && ppBox == false) {
                          functions.errorBox(context,
                              "You must read and agree to our terms and conditions to continue");
                        } else if (tcBox == false && ppBox == true) {
                          functions.errorBox(context,
                              "You must read and agree to our terms and conditions to continue");
                        } else if (tcBox == true && ppBox == false) {
                          functions.errorBox(context,
                              "You must read and agree to our terms and conditions to continue");
                        } else {
                          setState(() {
                            if (emailController.text ==
                                "202040094@psu.palawan.edu.ph") {
                              name = "Adryc Allen F. Catapang";
                              number = "202040094";
                              year = "2nd Year";
                              course = "BS Entrepreneurship - IT";
                            } else if (emailController.text ==
                                "2018100037n@psu.palawan.edu.ph") {
                              name = "Angelika Joy Kunang";
                              number = "2018100037n";
                              year = "4th Year";
                              course = "BS Computer Science";
                            } else if (emailController.text ==
                                "2018100147n@psu.palawan.edu.ph") {
                              name = "Bernie Ibanez";
                              number = "2018100147n";
                              year = "4th Year";
                              course = "BS Computer Science";
                            } else if (emailController.text ==
                                "2018100190n@psu.palawan.edu.ph") {
                              name = "Celdyne Paimalan";
                              number = "2018100190n";
                              year = "4th Year";
                              course = "BS Computer Science";
                            } else if (emailController.text ==
                                "2018100052n@psu.palawan.edu.ph") {
                              name = "Garry Earl Lontes";
                              number = "2018100052n";
                              year = "4th Year";
                              course = "BS Computer Science";
                            } else if (emailController.text ==
                                "2018100022n@psu.palawan.edu.ph") {
                              name = "Gervene Angelic Talaver";
                              number = "2018100022n";
                              year = "4th Year";
                              course = "BS Computer Science";
                            } else if (emailController.text ==
                                "2018100080n@psu.palawan.edu.ph") {
                              name = "John Carlo Sangalang";
                              number = "2018100080n";
                              year = "4th Year";
                              course = "BS Computer Science";
                            } else if (emailController.text ==
                                "2018100003n@psu.palawan.edu.ph") {
                              name = "Jonaida Ringgaran";
                              number = "2018100003n";
                              year = "4th Year";
                              course = "BS Computer Science";
                            } else if (emailController.text ==
                                "2018100109@psu.palawan.edu.ph") {
                              name = "Jonel Masarque";
                              number = "2018100109n";
                              year = "4th Year";
                              course = "BS Computer Science";
                            } else if (emailController.text ==
                                "2018100114n@psu.palawan.edu.ph") {
                              name = "Kim Cortezano";
                              number = "2018100114n";
                              year = "4th Year";
                              course = "BS Computer Science";
                            } else if (emailController.text ==
                                "2018105660n@psu.palawan.edu.ph") {
                              name = "Kristian Jarrell Estabillo";
                              number = "2018105660n";
                              year = "4th Year";
                              course = "BS Computer Science";
                            } else if (emailController.text ==
                                "2018100308n@psu.palawan.edu.ph") {
                              name = "Kristy Ann Andres";
                              number = "2018100308n";
                              year = "4th Year";
                              course = "BS Computer Science";
                            } else if (emailController.text ==
                                "2018100237n@psu.palawan.edu.ph") {
                              name = "Lady Mae Molijon";
                              number = "2018100237n";
                              year = "4th Year";
                              course = "BS Computer Science";
                            } else if (emailController.text ==
                                "2018100202n@psu.palawan.edu.ph") {
                              name = "Michelle Lyn Morales";
                              number = "2018100202n";
                              year = "4th Year";
                              course = "BS Computer Science";
                            } else if (emailController.text ==
                                "2018100280n@psu.palawan.edu.ph") {
                              name = "Norilyn Molejon";
                              number = "2018100280";
                              year = "4th Year";
                              course = "BS Computer Science";
                            } else if (emailController.text ==
                                "2018100125n@psu.palawan.edu.ph") {
                              name = "Rachiell Salazar";
                              number = "2018100125n";
                              year = "4th Year";
                              course = "BS Computer Science";
                            } else if (emailController.text ==
                                "2018100294n@psu.palawan.edu.ph") {
                              name = "Renz Theo Ramirez";
                              number = "2018100294n";
                              year = "4th Year";
                              course = "BS Computer Science";
                            } else if (emailController.text ==
                                "2018100304n@psu.palawan.edu.ph") {
                              name = "Ruby Jane Depaz";
                              number = "2018100304n";
                              year = "4th Year";
                              course = "BS Computer Science";
                            }
                          });
                          functions.verifyEmail(
                            context,
                            emailController.text,
                            passwordController.text,
                          );
                          showContinue = true;
                        }
                      },
                      child: Text(
                        "Verify Email",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, SignInForm.id, (route) => false);
                      },
                      child: Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
          showBG
              ? Container(
                  color: Colors.black.withOpacity(0.7),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                )
              : SizedBox(),
          showTC
              ? Center(
                  child: TermsAndConditions(
                    action: () {
                      setState(
                        () {
                          showTC = false;
                          showBG = false;
                          showPP = false;
                        },
                      );
                    },
                  ),
                )
              : SizedBox(),
          showPP
              ? Center(
                  child: PrivacyPolicy(
                    action: () {
                      setState(
                        () {
                          showTC = false;
                          showBG = false;
                          showPP = false;
                        },
                      );
                    },
                  ),
                )
              : SizedBox(),
          showContinue
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      showContinue = false;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black.withOpacity(0.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.white,
                          height: 220,
                          width: 280,
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  "Read Me First!",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  "We have sent a verification link to your corporate email. Please verify your account before clicking on continue to complete sign up.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.orange,
                                      ),
                                    ),
                                    onPressed: () {
                                      functions.signUp(
                                        context,
                                        emailController.text,
                                        phoneController.text,
                                        passwordController.text,
                                        name,
                                        number,
                                        year,
                                        course,
                                      );
                                      setState(() {
                                        showContinue = false;
                                      });
                                    },
                                    child: Text("Continue"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 100),
                      ],
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
