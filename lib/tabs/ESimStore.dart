import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kudo_sim/tabs/Connecting.dart';

class ESimStore extends StatefulWidget {
  const ESimStore({super.key});

  @override
  State<ESimStore> createState() => _ESimStoreState();
}

class _ESimStoreState extends State<ESimStore> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "Connecting",
      "Login",
      "VIP",
      "Payment",
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                height: 250,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(49, 11, 232, 1),
                        Color.fromRGBO(215, 3, 255, 1)
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                child: const Center(
                  child: Text(
                    'How Can\nWe Help You ?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppins',
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recommended",
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.search)
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Connecting(),
                      ));
                },
                child: SizedBox(
                  width: double.infinity,
                  height: 34,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Connecting(),
                              ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                            left: index == 0 ? 20 : 12,
                            right: index == categories.length - 1 ? 20 : 0,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          height: 34,
                          decoration: BoxDecoration(
                            color: current == index
                                ? Color.fromRGBO(102, 0, 153, 1)
                                : Color.fromRGBO(102, 0, 153, 0.1),
                            borderRadius: BorderRadius.circular(
                              32.5,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              categories[index],
                              style: TextStyle(
                                color: current == index
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 15,
                                fontFamily: 'poppins',
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'How to connect eSIM?',
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Connecting(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Why I can’t connect to internet\nwhile eSIM is connected?',
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
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Why I can’t authorize or can’t press OK?',
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
                            'Is KudoSim safe for me?',
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
                            'How to use KudoSim',
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
                            'How to disconnect KudoSim?',
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
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 40,
            left: 10,
            child: Transform.rotate(
              angle:
                  pi, // Rotate the icon by 90 degrees clockwise (pi/2 radians)
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
      ),
    );
  }
}
