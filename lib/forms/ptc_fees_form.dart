// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quickie/forms/ptc_web_view.dart';
import 'package:quickie/functions.dart';

class PTCFeesForm extends StatefulWidget {
  PTCFeesForm({Key? key}) : super(key: key);
  static String id = "PTCFeesForm";

  @override
  State<PTCFeesForm> createState() => _PTCFeesFormState();
}

class _PTCFeesFormState extends State<PTCFeesForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text("PTC Fees"),
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
                      feesData!["p11"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p11";
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
                                    Text("${feesData!["p11"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p11"] == ptcMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["p12"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p12";
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
                                    Text("${feesData!["p12"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p12"] == ptcMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["p21"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p21";
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
                                    Text("${feesData!["p21"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p21"] == ptcMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["p22"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p22";
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
                                    Text("${feesData!["p22"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p22"] == ptcMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["p31"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p31";
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
                                    Text("${feesData!["p31"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p31"] == ptcMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["p32"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p32";
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
                                    Text("${feesData!["p32"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p32"] == ptcMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["p41"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p41";
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
                                    Text("${feesData!["p41"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p41"] == ptcMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["p42"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p42";
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
                                    Text("${feesData!["p42"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p42"] == ptcMax
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
                      feesData!["p21"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p21";
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
                                    Text("${feesData!["p21"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p21"] == ptcMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["p22"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p22";
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
                                    Text("${feesData!["p22"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p22"] == ptcMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["p31"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p31";
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
                                    Text("${feesData!["p31"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p31"] == ptcMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["p32"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p32";
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
                                    Text("${feesData!["p32"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p32"] == ptcMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["p41"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p41";
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
                                    Text("${feesData!["p41"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p41"] == ptcMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["p42"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p42";
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
                                    Text("${feesData!["p42"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p42"] == ptcMax
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
                      feesData!["p31"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p31";
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
                                    Text("${feesData!["p31"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p31"] == ptcMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["p32"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p32";
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
                                    Text("${feesData!["p32"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p32"] == ptcMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["p41"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p41";
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
                                    Text("${feesData!["p41"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p41"] == ptcMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["p42"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p42";
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
                                    Text("${feesData!["p42"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p42"] == ptcMax
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
                      feesData!["p41"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p41";
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
                                    Text("${feesData!["p41"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p41"] == ptcMax
                          ? SizedBox()
                          : Divider(
                              color: Colors.grey, thickness: 1, height: 1),
                      feesData!["p42"] == ptcMax
                          ? SizedBox()
                          : GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    payPTCBox = true;
                                    currentFee = "p42";
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
                                    Text("${feesData!["p42"]}/$ptcMax PHP"),
                                    SizedBox(width: 30),
                                  ],
                                ),
                              ),
                            ),
                      feesData!["p42"] == ptcMax
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
          payPTCBox
              ? GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        payPTCBox = false;
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
                                            currentPay = 100;
                                            currentURL = url100;
                                            payPTCBox = false;
                                          },
                                        );
                                        Navigator.pushNamed(
                                            context, PTCWebView.id);
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
                                            currentPay = 200;
                                            currentURL = url200;
                                            payPTCBox = false;
                                          },
                                        );
                                        Navigator.pushNamed(
                                            context, PTCWebView.id);
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.orange.shade300,
                                        radius: 35,
                                        child: Text(
                                          "200",
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
                                            currentPay = 400;
                                            currentURL = url400;
                                            payPTCBox = false;
                                          },
                                        );
                                        Navigator.pushNamed(
                                            context, PTCWebView.id);
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.orange.shade300,
                                        radius: 35,
                                        child: Text(
                                          "400",
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
