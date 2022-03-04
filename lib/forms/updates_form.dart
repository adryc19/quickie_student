// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quickie/functions.dart';
import 'package:quickie/widgets/update_widget.dart';

class UpdatesForm extends StatelessWidget {
  static String id = "UpdatesForm";

  final Stream<QuerySnapshot> items = FirebaseFirestore.instance
      .collection("Users")
      .doc(quickieUser!.email)
      .collection("Updates")
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange.shade900,
        title: Text("Updates"),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: items,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Container(
              color: Colors.white,
            );
          } else {
            return ListView.builder(
              shrinkWrap: true,
              reverse: true,
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                return UpdateWidget(
                  snapshot.data!.docs[index]["subject"],
                  snapshot.data!.docs[index]["message"],
                  snapshot.data!.docs[index]["mode"],
                  snapshot.data!.docs[index]["date"],
                );
              },
            );
          }
        },
      ),
    );
  }
}
