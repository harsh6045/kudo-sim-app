//radio.dart file import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CustomRadioButtonTile extends StatefulWidget {
  final int gbdata;
  final double price;

  const CustomRadioButtonTile({
    super.key,
    required this.gbdata,
    required this.price,
  });
  @override
  _CustomRadioButtonTileState createState() => _CustomRadioButtonTileState();
}

class _CustomRadioButtonTileState extends State<CustomRadioButtonTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Color(0x80D3A0E1), // Dark Blue
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.gbdata.toString()} GB",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    'Europe 39 Countries',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.price.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  '\u20AC30Days',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Spacer(),
          Radio(
            fillColor: MaterialStateProperty.all(Colors.white),
            value: true,
            groupValue: isSelected,
            onChanged: (value) {
              setState(() {
                isSelected = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
