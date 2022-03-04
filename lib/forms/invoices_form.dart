// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quickie/forms/main_form.dart';
import 'package:quickie/functions.dart';
import 'package:quickie/widgets/invoice_widget.dart';

class InvoicesForm extends StatelessWidget {
  static String id = "InvoicesForm";

  final Stream<QuerySnapshot> invoices = FirebaseFirestore.instance
      .collection("Users")
      .doc(quickieUser!.email)
      .collection("Invoices")
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange.shade900,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, MainForm.id, (route) => false);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Invoices"),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: invoices,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Container(
              color: Colors.white,
            );
          } else {
            return ListView.builder(
              shrinkWrap: true,
              reverse: false,
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.orange.shade900,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 125,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width - 50,
                        height: MediaQuery.of(context).size.height - 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${snapshot.data!.docs[index]["status"]}",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 30),
                            Image.asset("assets/q.png", height: 150),
                            SizedBox(height: 30),
                            Text(
                              snapshot.data!.docs[index]["name"],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "${snapshot.data!.docs[index]["pay"]}.00 PHP",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 30),
                            Divider(
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(height: 15),
                            Text(
                              snapshot.data!.docs[index]["sem"],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "${snapshot.data!.docs[index]["fee"]} ${snapshot.data!.docs[index]["activity"]}",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 15),
                            Divider(
                              height: 1,
                              thickness: 2,
                            ),
                            SizedBox(height: 20),
                            SizedBox(height: 5),
                            Text(
                              "No. ${snapshot.data!.docs[index]["number"]}",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Date: ${snapshot.data!.docs[index]["date"]}",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 50),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
