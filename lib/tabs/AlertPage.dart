import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kudo_sim/tabs/AlertInfoPage.dart';

class AlertPage extends StatefulWidget {
  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AlertInfoPage()));
                  },
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_outlined),
                      SizedBox(
                        width: 125,
                      ),
                      Text(
                        "Alert",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Image.asset("assets/images/alertimage.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Center(
                    child: Text(
                      " You Don't Have \nAny Notification",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Center(
                    child: Text(
                      "All new notification will \n         appear here.",
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
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
