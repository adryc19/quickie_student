// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quickie/functions.dart';
import 'package:quickie/forms/csg_fees_form.dart';
import 'package:quickie/forms/ptc_fees_form.dart';

class FeesForm extends StatelessWidget {
  FeesForm({Key? key}) : super(key: key);
  static String id = "FeesForm";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text("Fees"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () async {
                  functions.getCurrentUser();
                  DocumentSnapshot uData =
                      await fbStore.collection("Users").doc(quickieUser!.email).get();
                  userData = uData;
                  DocumentSnapshot fData = await fbStore
                      .collection("Users")
                      .doc(quickieUser!.email)
                      .collection("Payments")
                      .doc("Fees")
                      .get();
                  feesData = fData;
                  Navigator.pushNamed(context, CSGFeesForm.id);
                },
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.orange.shade300,
                      child: Icon(
                        Icons.assured_workload,
                        size: 50,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "CSG",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () async {
                  functions.getCurrentUser();
                  DocumentSnapshot uData =
                      await fbStore.collection("Users").doc(quickieUser!.email).get();
                  userData = uData;
                  DocumentSnapshot fData = await fbStore
                      .collection("Users")
                      .doc(quickieUser!.email)
                      .collection("Payments")
                      .doc("Fees")
                      .get();
                  feesData = fData;
                  Navigator.pushNamed(context, PTCFeesForm.id);
                },
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.orange.shade300,
                      child: Icon(
                        Icons.groups,
                        size: 50,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "PTC",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
