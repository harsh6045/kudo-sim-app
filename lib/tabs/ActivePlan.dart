import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class ActivePlan extends StatefulWidget {
  final String cityName;
  const ActivePlan({super.key, required this.cityName});
  @override
  State<ActivePlan> createState() => _ActivePlanState();
}

class _ActivePlanState extends State<ActivePlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            'assets/images/back_active.svg', // Your SVG file path here
            fit: BoxFit.cover,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.only(top: 50.0),
              color: Colors.transparent, // Make the column transparent
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Balance",
                              style: TextStyle(
                                color: Color.fromRGBO(119, 138, 166, 1),
                                fontFamily: 'Poppins',
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Sadri Hykosmani",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Spacer(),
                        Material(
                          elevation: 5,
                          child: SvgPicture.asset(
                            "assets/images/Pro.svg",
                            fit: BoxFit.fill,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "My Active eSIM",
                          style: TextStyle(
                              color: Color.fromRGBO(42, 48, 56, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.cityName,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              color: Color.fromRGBO(102, 0, 153, 1),
                              fontSize: 60,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "Until: 28 February 2024",
                          style: TextStyle(
                              color: Color.fromRGBO(42, 48, 56, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Spacer(),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Remaining Balance",
                          style: TextStyle(
                            color: Color.fromRGBO(119, 138, 166, 1),
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "2.97 GB",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 36,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Add more widgets to the Column as needed
          ),
        ],
      ),
    );
  }
}
