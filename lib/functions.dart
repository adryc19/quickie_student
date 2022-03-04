// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quickie/forms/main_form.dart';
import 'package:quickie/forms/start_form.dart';

DocumentSnapshot? userData;
DocumentSnapshot? feesData;
bool tcBox = false;
bool ppBox = false;
bool payCSGBox = false;
bool payPTCBox = false;
bool showTC = false;
bool showPP = false;
bool showBG = false;
bool pObscure = true;
bool cpObscure = true;
bool siblings = false;
bool showContinue = false;
String? name;
String? number;
String? year;
String? course;
dynamic csgMax = 260;
dynamic ptcMax = 400;
dynamic url60 =
    "https://getpaid.gcash.com/checkout/b1f877a6ea9d6d063285194ea4c4668a";
dynamic url100 =
    "https://getpaid.gcash.com/checkout/f69ebe9868b8c8eb0aa4806b526331cc";
dynamic url200 =
    "https://getpaid.gcash.com/checkout/28f117ac45058489a8fc76d3018a64c0";
dynamic url260 =
    "https://getpaid.gcash.com/checkout/4eead0ba497fb1fd2f0b8bb7d416861f";
dynamic url400 =
    "https://getpaid.gcash.com/checkout/4728bd714d4ae848f48f5e7bbc2c3570";
dynamic url600 =
    "https://getpaid.gcash.com/checkout/68859e81893bdee72c241744c8fe461d";
dynamic currentURL;
dynamic currentFee;
dynamic currentPay;
dynamic currentSem;
dynamic quickieUser;
final fbAuth = FirebaseAuth.instance;
final fbStore = FirebaseFirestore.instance;
final functions = Functions();

class Functions {
  void getCurrentUser() {
    final user = fbAuth.currentUser;
    if (user != null) {
      quickieUser = user;
    }
  }

  void verifyEmail(
    context,
    email,
    password,
  ) async {
    try {
      await fbAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await fbAuth.currentUser!.sendEmailVerification();
    } catch (e) {
      errorBox(context, e);
    }
  }

  void signUp(
    context,
    email,
    phone,
    password,
    rName,
    rNumber,
    rYear,
    rCourse,
  ) async {
    await fbAuth.signInWithEmailAndPassword(email: email, password: password);
    getCurrentUser();
    if (fbAuth.currentUser!.emailVerified) {
      await fbStore.collection("Users").doc(fbAuth.currentUser!.email).set(
        {
          "email": email,
          "phone": phone,
          "name": rName,
          "number": rNumber,
          "year": rYear,
          "course": rCourse,
        },
      );
      await fbStore
          .collection("Users")
          .doc(quickieUser.email)
          .collection("Payments")
          .doc("Fees")
          .set(
        {
          "c11": 0,
          "c12": 0,
          "c21": 0,
          "c22": 0,
          "c31": 0,
          "c32": 0,
          "c41": 0,
          "c42": 0,
          "p11": 0,
          "p12": 0,
          "p21": 0,
          "p22": 0,
          "p31": 0,
          "p32": 0,
          "p41": 0,
          "p42": 0,
        },
      );
      signIn(context, email, password);
      Navigator.pushNamedAndRemoveUntil(context, MainForm.id, (route) => false);
    }
  }

  void signIn(
    context,
    email,
    password,
  ) async {
    try {
      await fbAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      functions.getCurrentUser();
    } catch (e) {
      errorBox(
        context,
        "Corporate email not yet registered",
      );
    }
  }

  void resetPassword(email) {
    fbAuth.sendPasswordResetEmail(email: email);
  }

  void signOut(context) async {
    try {
      fbAuth.signOut();
      Navigator.pushNamedAndRemoveUntil(
          context, StartForm.id, (route) => false);
    } catch (e) {
      errorBox(context, e);
    }
  }

  void errorBox(
    context,
    e,
  ) async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            children: const [
              Icon(Icons.warning),
              SizedBox(width: 5),
              Text("Oops!"),
            ],
          ),
          content: Text(e.toString()),
        );
      },
    );
  }

  void notErrorBox(
    context,
    e,
  ) async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            children: const [
              Icon(Icons.celebration),
              SizedBox(width: 5),
              Text("Yay!"),
            ],
          ),
          content: Text(e.toString()),
        );
      },
    );
  }

  void payCSG() async {
    await fbStore
        .collection("Users")
        .doc(quickieUser.email)
        .collection("Payments")
        .doc("Fees")
        .update(
      {
        "$currentFee": feesData![currentFee] + currentPay,
      },
    );
    await fbStore
        .collection("Users")
        .doc(quickieUser.email)
        .collection("Invoices")
        .doc()
        .set(
      {
        "status": "Payment Successful",
        "name": userData!["name"],
        "pay": currentPay,
        "sem": currentSem,
        "fee": "CSG Fee",
        "activity": "Payment",
        "number": userData!["number"],
        "date":
            "${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year}",
      },
    );
    await fbStore
        .collection("Users")
        .doc("csgpsunarra@gmail.com")
        .collection("Invoices")
        .doc()
        .set(
      {
        "status": "Payment Successful",
        "name": userData!["name"],
        "pay": currentPay,
        "sem": currentSem,
        "fee": "CSG Fee",
        "activity": "Payment",
        "number": userData!["number"],
        "date":
            "${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year}",
      },
    );
    await fbStore.collection("Users").doc(quickieUser.email).update(
      {
        "balance": userData!["balance"] + currentPay,
      },
    );
  }

  void payPTC() async {
    await fbStore
        .collection("Users")
        .doc(quickieUser.email)
        .collection("Payments")
        .doc("Fees")
        .update(
      {
        "$currentFee": feesData![currentFee] + currentPay,
      },
    );
    await fbStore
        .collection("Users")
        .doc(quickieUser.email)
        .collection("Invoices")
        .doc()
        .set(
      {
        "status": "Payment Successful",
        "name": userData!["name"],
        "pay": currentPay,
        "sem": currentSem,
        "fee": "PTC Fee",
        "activity": "Payment",
        "number": userData!["number"],
        "date":
            "${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year}",
      },
    );
    await fbStore
        .collection("Users")
        .doc("ptcpsunarra@gmail.com")
        .collection("Invoices")
        .doc()
        .set(
      {
        "status": "Payment Successful",
        "name": userData!["name"],
        "pay": currentPay,
        "sem": currentSem,
        "fee": "PTC Fee",
        "activity": "Payment",
        "number": userData!["number"],
        "date":
            "${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year}",
      },
    );
    await fbStore.collection("Users").doc(quickieUser.email).update(
      {
        "balance": userData!["balance"] + currentPay,
      },
    );
  }
}
