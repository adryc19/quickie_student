// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quickie/functions.dart';
import 'package:quickie/forms/invoices_form.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CSGWebView extends StatefulWidget {
  static String id = "WebView";

  @override
  State<CSGWebView> createState() => _CSGWebViewState();
}

class _CSGWebViewState extends State<CSGWebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(0, 80, 245, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Pay Now",
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white)),
              onPressed: () {
                functions.payCSG();
                Navigator.pushNamedAndRemoveUntil(
                    context, InvoicesForm.id, (route) => false);
              },
              child: Text(
                "Done",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(0, 80, 245, 1),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: currentURL,
            javascriptMode: JavascriptMode.unrestricted,
            zoomEnabled: true,
          ),
        ],
      ),
    );
  }
}
