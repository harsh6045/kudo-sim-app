import 'package:flutter/material.dart';
import 'package:kudo_sim/storepages/Widgets/buy-now.dart';
import 'package:kudo_sim/storepages/Widgets/round-tile.dart';

class GlobalCard extends StatelessWidget {
  const GlobalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(24))),
        child: Stack(
          children: [
            Image.asset('assets/images/Frame 12.png'),
            Padding(
              padding: EdgeInsets.all(14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Row(
                    children: [
                      Text(
                        "Coverage : ",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "127 countries ",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Worldwide ",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "12.99/ €",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "30 Days ",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Color(0xFF778AA6),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "3GB ",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        width: 80,
                        height: 1,
                        color: Color(0xFF778AA6),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          RoundTile(imagePath: 'assets/images/25.png'),
                          RoundTile(imagePath: 'assets/images/Group.png'),
                          RoundTile(imagePath: 'assets/images/Group (1).png'),
                        ],
                      ),
                      BuyNowButton()
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
