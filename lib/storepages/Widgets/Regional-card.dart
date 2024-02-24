import 'package:flutter/material.dart';
import 'package:kudo_sim/storepages/Widgets/regional-buy-now.dart';
import 'package:kudo_sim/storepages/Widgets/round-tile.dart';

class RegionalCard extends StatelessWidget {
  const RegionalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        height: 190,
        width: 200,
        decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(24))),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/Background.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/Group 72.png',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
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
                            color: Colors.white),
                      ),
                      Text(
                        "127 countries ",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Colors.white),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Image.asset(
                                'assets/images/france 1.png',
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Text(
                            "France",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "12.99/ €",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Text(
                            "30 Days ",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Colors.white,
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
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Container(
                        width: 80,
                        height: 1,
                        color: Colors.white,
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
                      RegionalBuyNow()
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
