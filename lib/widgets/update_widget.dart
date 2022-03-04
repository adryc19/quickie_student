// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class UpdateWidget extends StatelessWidget {
  dynamic subject;
  dynamic message;
  dynamic date;
  dynamic mode;

  UpdateWidget(
    this.subject,
    this.message,
    this.mode,
    this.date,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    subject,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: SizedBox()),
                  Text(mode),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/1.5,
                    child: Text(message),
                  ),
                  Expanded(child: SizedBox()),
                  Text(date),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        Divider(
          height: 1,
          thickness: 2,
        ),
      ],
    );
  }
}
