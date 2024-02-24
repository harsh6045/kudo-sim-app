import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertInfoPage extends StatefulWidget {
  @override
  State<AlertInfoPage> createState() => _AlertInfoPageState();
}

class _AlertInfoPageState extends State<AlertInfoPage> {
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
                Row(
                  children: [
                    Icon(Icons.arrow_back_outlined),
                    SizedBox(
                      width: 125,
                    ),
                    Text(
                      "Alert",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    "New Notifications",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xFFE8E8E8),
                        borderRadius: BorderRadius.circular(21),
                        border: Border.all(color: Colors.black26, width: 1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30.0, top: 15, bottom: 15),
                          child: Text(
                            "You are Running Out of Data",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, bottom: 8),
                          child: Text(
                            "You have only 20% of your data left \nplease TOP-UP account to stay online",
                            style: TextStyle(
                              color: Color(0xFF838383),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Old Notifications",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Your ESIM For Germany Has Expired",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF838383),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 5),
                  child: Text(
                    "Your travel data plan has expired on 3 \nFebruary 2024",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF838383),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Divider(
                  color: Color(0xFFD5D5D5),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Thank You for Your Purchase",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF838383),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 5),
                  child: Text(
                    "Your package will remain active for 30days,\nplease turn on Data Roaming on Cellular settings to stay Online!",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF838383),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Divider(
                  color: Color(0xFFD5D5D5),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Thank You For Signing Up To \nKudoesim",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF838383),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Please confirm your account",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF838383),
                      fontWeight: FontWeight.w500,
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
