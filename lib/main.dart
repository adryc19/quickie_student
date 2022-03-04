// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quickie/forms/about_form.dart';
import 'package:quickie/forms/help_form.dart';
import 'package:quickie/forms/main_form.dart';
import 'package:quickie/forms/ptc_web_view.dart';
import 'package:quickie/forms/sign_up_form.dart';
import 'package:quickie/forms/sign_in_form.dart';
import 'package:quickie/forms/start_form.dart';
import 'package:quickie/forms/csg_fees_form.dart';
import 'package:quickie/forms/fees_form.dart';
import 'package:quickie/forms/invoices_form.dart';
import 'package:quickie/forms/ptc_fees_form.dart';
import 'package:quickie/forms/updates_form.dart';
import 'package:quickie/forms/csg_web_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: StartForm.id,
      routes: {
        InvoicesForm.id: (context) => InvoicesForm(),
        UpdatesForm.id: (context) => UpdatesForm(),
        CSGFeesForm.id: (context) => CSGFeesForm(),
        PTCFeesForm.id: (context) => PTCFeesForm(),
        SignUpForm.id: (context) => SignUpForm(),
        SignInForm.id: (context) => SignInForm(),
        CSGWebView.id: (context) => CSGWebView(),
        PTCWebView.id: (context) => PTCWebView(),
        StartForm.id: (context) => StartForm(),
        AboutForm.id: (context) => AboutForm(),
        MainForm.id: (context) => MainForm(),
        HelpForm.id: (context) => HelpForm(),
        FeesForm.id: (context) => FeesForm(),
      },
    );
  }
}
