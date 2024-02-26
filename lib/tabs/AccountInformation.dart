import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kudo_sim/tabs/SecureCheckout.dart';

class AccountInformation extends StatefulWidget {
  const AccountInformation({super.key});

  @override
  State<AccountInformation> createState() => _AccountInformationState();
}

class _AccountInformationState extends State<AccountInformation> {
  String selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Transform.rotate(
                      angle:
                          pi, // Rotate the icon by 90 degrees clockwise (pi/2 radians)
                      child: const Icon(
                        Icons.arrow_right_alt_rounded,
                        size: 30,
                        color: Color.fromRGBO(112, 0, 255, 1),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Account Information",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecureCheckout()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'assets/images/userImage.png',
                        width: 100,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sadri  Hykosmani",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "sadri@example.me",
                            style: TextStyle(
                              color: Color.fromRGBO(42, 48, 56, 0.6),
                              fontFamily: 'poppins',
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      width: 241,
                      height: 80,
                      child: Stack(
                        children: [
                          SvgPicture.asset(
                            'assets/images/useactiveeSIM.svg', // Your SVG file path here
                            fit: BoxFit.cover,
                          ),
                          Center(
                            child: Container(
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Active ESIMS",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Europe",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'poppins',
                                    ),
                                  ),
                                ],
                              ),
                              // Your widget to be centered
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "20",
                          style: TextStyle(
                              color: Color.fromRGBO(204, 2, 255, 1),
                              fontSize: 36,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Days left",
                          style: TextStyle(
                            color: Color.fromRGBO(204, 2, 255, 1),
                            fontSize: 16,
                            fontFamily: 'poppins',
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Your Name",
                        style: TextStyle(
                          color: Color.fromRGBO(42, 48, 56, 0.4),
                          fontSize: 14,
                          fontFamily: 'poppins',
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.5),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Color.fromRGBO(194, 205, 220, 0.3),
                        ),
                        style: const TextStyle(
                            color: Color.fromRGBO(42, 48, 56, 1),
                            fontSize: 14,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Email Address",
                        style: TextStyle(
                          color: Color.fromRGBO(42, 48, 56, 0.4),
                          fontSize: 14,
                          fontFamily: 'poppins',
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.5),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Color.fromRGBO(194, 205, 220, 0.3),
                        ),
                        style: const TextStyle(
                            color: Color.fromRGBO(42, 48, 56, 1),
                            fontSize: 14,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Date Of Birth",
                        style: TextStyle(
                          color: Color.fromRGBO(42, 48, 56, 0.4),
                          fontSize: 14,
                          fontFamily: 'poppins',
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.5),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Color.fromRGBO(194, 205, 220, 0.3),
                        ),
                        style: const TextStyle(
                            color: Color.fromRGBO(42, 48, 56, 1),
                            fontSize: 14,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Gender",
                        style: TextStyle(
                          color: Color.fromRGBO(42, 48, 56, 0.4),
                          fontSize: 14,
                          fontFamily: 'poppins',
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(194, 205, 220, 0.2),
                              borderRadius: BorderRadius.circular(32.5),
                            ),
                            child: Center(child: Text("Male")),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 50,
                            width: 145,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(194, 205, 220, 0.2),
                              borderRadius: BorderRadius.circular(32.5),
                            ),
                            child: Center(child: Text("Female")),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
