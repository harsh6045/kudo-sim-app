import 'package:flutter/material.dart';

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
          height: 30,
          width: 100,
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "BUY NOW",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
