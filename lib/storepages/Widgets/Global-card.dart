import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kudo_sim/storepages/Widgets/buy-now.dart';
import 'package:kudo_sim/storepages/Widgets/round-tile.dart';
import 'package:kudo_sim/storepages/localpackpages.dart';
import 'package:kudo_sim/tabs/SecureCheckout.dart';

class GlobalCard extends StatelessWidget {
  final String cityName;
  final String validity;
  final String data;
  final String price;
  GlobalCard(
      {super.key,
      required this.cityName,
      required this.validity,
      required this.data,
      required this.price});

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
                  Row(
                    children: [
                      Text(
                        "Coverage : ",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        cityName,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cityName + " ",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            price + "/ €",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            validity,
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
                      Text(
                        data,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          RoundTile(imagePath: 'assets/images/25.png'),
                          RoundTile(imagePath: 'assets/images/Group.png'),
                          RoundTile(imagePath: 'assets/images/Group (1).png'),
                        ],
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SecureCheckout(),
                                ));
                          },
                          child: BuyNowButton())
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
