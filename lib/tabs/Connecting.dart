import 'dart:math';

import 'package:flutter/material.dart';

class Connecting extends StatefulWidget {
  const Connecting({super.key});

  @override
  State<Connecting> createState() => _ConnectingState();
}

class _ConnectingState extends State<Connecting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
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
                      "Connecting",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Why I can’t connect to internet while KudoSim is connected?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "VPN stands for virtual private network. It allows you to browse anonymously online with fast, secure and reliable internet connection.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'poppins',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2016/11/19/14/00/code-1839406_1280.jpg',
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            }
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Absolutely. If you browse online, you simply need a VPN. Encrypted internet traffic, greater online privacy, and access to more content are the main advantages of a VPN. Furthermore, people are more vulnerable to cyber threats than they think. ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'poppins',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Was This Answer Helpful?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 80,
                            height: 35,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(102, 0, 153, 1),
                                borderRadius: BorderRadius.circular(32.5)),
                            child: Center(
                                child: Text(
                              'Yes',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 80,
                            height: 35,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(102, 0, 153, 0),
                                borderRadius: BorderRadius.circular(32.5)),
                            child: Center(
                                child: Text(
                              'No',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ],
                      )
                    ],
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
