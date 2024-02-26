import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kudo_sim/tabs/PaymentDeclined.dart';

class PaymentCompleted extends StatefulWidget {
  const PaymentCompleted({super.key});

  @override
  State<PaymentCompleted> createState() => _PaymentCompletedState();
}

class _PaymentCompletedState extends State<PaymentCompleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                height: 250,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(4, 51, 10, 1),
                        Color.fromRGBO(175, 232, 11, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentDeclined(),
                        ));
                  },
                  child: Center(
                    child: Text(
                      'Payment\nCompleted',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'poppins',
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Read the following instructions\nto activate your e-sim',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Install from QR code',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'poppins',
                              fontSize: 14,
                            ),
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Direct Install',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'poppins',
                              fontSize: 14,
                            ),
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Manual Installation',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'poppins',
                              fontSize: 14,
                            ),
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 40,
          left: 10,
          child: Transform.rotate(
            angle: pi, // Rotate the icon by 90 degrees clockwise (pi/2 radians)
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_right_alt_rounded,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
