// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quickie/functions.dart';
import 'package:quickie/forms/csg_web_view.dart';

class CSGFeesForm extends StatefulWidget {
  CSGFeesForm({Key? key}) : super(key: key);
  static String id = "CSGFeesForm";

  @override
  State<CSGFeesForm> createState() => _CSGFeesFormState();
}

class _CSGFeesFormState extends State<CSGFeesForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text("CSG Fees"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              if (userData!["year"] == "1st Year") {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      feesData!["c11"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c11";
                                    currentSem = "1st year 1st Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "1st year 1st Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c11"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c11"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["c12"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c12";
                                    currentSem = "1st year 2nd Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "1st year 2nd Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c12"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c12"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["c21"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c21";
                                    currentSem = "2nd year 1st Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "2nd year 1st Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c21"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c21"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["c22"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c22";
                                    currentSem = "2nd year 2nd Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "2nd year 2nd Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c22"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c22"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["c31"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c31";
                                    currentSem = "3rd year 1st Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "3rd year 1st Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c31"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c31"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["c32"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c32";
                                    currentSem = "3rd year 2nd Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "3rd year 2nd Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c32"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c32"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["c41"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c41";
                                    currentSem = "4th year 1st Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "4th year 1st Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c41"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c41"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["c42"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c42";
                                    currentSem = "4th year 2nd Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "4th year 2nd Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c42"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c42"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                    ],
                  ),
                );
              } else if (userData!["year"] == "2nd Year") {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      feesData!["c21"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c21";
                                    currentSem = "2nd year 1st Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "2nd year 1st Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c21"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c21"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["c22"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c22";
                                    currentSem = "2nd year 2nd Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "2nd year 2nd Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c22"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c22"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["c31"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c31";
                                    currentSem = "3rd year 1st Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "3rd year 1st Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c31"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c31"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["c32"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c32";
                                    currentSem = "3rd year 2nd Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "3rd year 2nd Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c32"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c32"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["c41"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c41";
                                    currentSem = "4th year 1st Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "4th year 1st Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c41"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c41"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["c42"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c42";
                                    currentSem = "4th year 2nd Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "4th year 2nd Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c42"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c42"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                    ],
                  ),
                );
              } else if (userData!["year"] == "3rd Year") {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      feesData!["c31"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c31";
                                    currentSem = "3rd year 1st Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "3rd year 1st Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c31"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c31"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["c32"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c32";
                                    currentSem = "3rd year 2nd Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "3rd year 2nd Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c32"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c32"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["c41"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c41";
                                    currentSem = "4th year 1st Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "4th year 1st Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c41"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c41"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["c42"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c42";
                                    currentSem = "4th year 2nd Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "4th year 2nd Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c42"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c42"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                    ],
                  ),
                );
              } else if (userData!["year"] == "4th Year") {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      feesData!["c41"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c41";
                                    currentSem = "4th year 1st Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "4th year 1st Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c41"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c41"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["c42"] == csgMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payCSGBox = true;
                                    currentFee = "c42";
                                    currentSem = "4th year 2nd Sem";
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                height: 80,
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "4th year 2nd Sem",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("${feesData!["c42"]}/$csgMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["c42"] == csgMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                    ],
                  ),
                );
              } else {
                return SizedBox();
              }
            },
          ),
          payCSGBox
              ? GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        payCSGBox = false;
                      },
                    );
                  },
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.white,
                            width: 300,
                            child: Column(
                              children: [
                                SizedBox(height: 25),
                                Text(
                                  "Select payment amount",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "for $currentSem fee",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(
                                          () {
                                            currentPay = 60;
                                            currentURL = url60;
                                            payCSGBox = false;
                                          },
                                        );
                                        Navigator.pushNamed(
                                            context, CSGWebView.id);
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.orange.shade300,
                                        radius: 35,
                                        child: Text(
                                          "60",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(
                                          () {
                                            currentPay = 100;
                                            currentURL = url100;
                                            payCSGBox = false;
                                          },
                                        );
                                        Navigator.pushNamed(
                                            context, CSGWebView.id);
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.orange.shade300,
                                        radius: 35,
                                        child: Text(
                                          "100",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(
                                          () {
                                            currentPay = 260;
                                            currentURL = url260;
                                            payCSGBox = false;
                                          },
                                        );
                                        Navigator.pushNamed(
                                            context, CSGWebView.id);
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.orange.shade300,
                                        radius: 35,
                                        child: Text(
                                          "260",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 25),
                              ],
                            ),
                          ),
                          SizedBox(height: 100),
                        ],
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
