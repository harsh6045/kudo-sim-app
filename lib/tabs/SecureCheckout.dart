import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kudo_sim/tabs/PaymentCompleted.dart';
import 'package:kudo_sim/tabs/PaymentDeclined.dart';

class SecureCheckout extends StatefulWidget {
  const SecureCheckout({super.key});

  @override
  State<SecureCheckout> createState() => _SecureCheckoutState();
}

class _SecureCheckoutState extends State<SecureCheckout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
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
                      "Secure Checkout",
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
                Container(
                  height: 78,
                  width: 315,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.5),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(49, 11, 232, 1),
                        Color.fromRGBO(0, 39, 254, 1),
                        Color.fromRGBO(130, 0, 255, 1),
                        Color.fromRGBO(215, 3, 255, 1),
                      ], // Define your gradient colors
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/images/btn-icon-inactive.svg', // Your SVG file path here
                          fit: BoxFit.cover,
                          width: 45,
                          height: 45,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "TOTAL: 8.99€",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "3GB Europe / 30 Days ",
                              style: TextStyle(
                                color: Colors.white60,
                                fontFamily: 'poppins',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Card Number",
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
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Name on card",
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
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Expiration Date",
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
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "CCV",
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
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const PaymentCompleted()));
                      },
                      child: Container(
                        width: 70,
                        height: 48,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: Color.fromRGBO(217, 217, 217, 1)),
                            borderRadius: BorderRadius.circular(6)),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: SvgPicture.asset(
                            'assets/images/visa-logo.svg', // Your SVG file path here
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 48,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.0,
                              color: Color.fromRGBO(217, 217, 217, 1)),
                          borderRadius: BorderRadius.circular(6)),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: SvgPicture.asset(
                          'assets/images/Mastercard.svg', // Your SVG file path here
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 48,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.0,
                              color: Color.fromRGBO(217, 217, 217, 1)),
                          borderRadius: BorderRadius.circular(6)),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: SvgPicture.asset(
                          'assets/images/Maestro.svg', // Your SVG file path here
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 48,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.0,
                              color: Color.fromRGBO(217, 217, 217, 1)),
                          borderRadius: BorderRadius.circular(6)),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: SvgPicture.asset(
                          'assets/images/Payoneer.svg', // Your SVG file path here
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                const Text(
                  "Powered by ",
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
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentDeclined()));
                  },
                  child: Container(
                    height: 43,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.5),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(49, 11, 232, 1),
                          Color.fromRGBO(0, 39, 254, 1),
                          Color.fromRGBO(130, 0, 255, 1),
                          Color.fromRGBO(215, 3, 255, 1),
                        ], // Define your gradient colors
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/images/btn-icon-inactive.svg', // Your SVG file path here
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Pay now",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
