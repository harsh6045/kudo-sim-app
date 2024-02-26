import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kudo_sim/Model/Package.dart';
import 'package:kudo_sim/storepages/globalpackagepage.dart';
import 'package:kudo_sim/tabs/SecureCheckout.dart';

class InactivePlan extends StatefulWidget {
  final String cityName;
  final List<Package> package;

  const InactivePlan({Key? key, required this.cityName, required this.package}) : super(key: key);

  @override
  State<InactivePlan> createState() => _InactivePlanState();
}

class _InactivePlanState extends State<InactivePlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            'assets/images/back_inactive.svg', // Your SVG file path here
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
                          "You have used all data",
                          style: TextStyle(
                              color: Color.fromRGBO(42, 48, 56, 1),
                              fontSize: 20,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.cityName,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              color: Color.fromRGBO(42, 48, 56, 1),
                              fontSize: 60,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "Please buy new package",
                          style: TextStyle(
                              color: Color.fromRGBO(42, 48, 56, 1),
                              fontSize: 16,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GlobalPackage(packages: widget.package,),
                            ));
                      },
                      child: Container(
                        height: 43,
                        width: 200,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/btn-icon-inactive.svg', // Your SVG file path here
                              fit: BoxFit.cover,
                            ),
                            Text(
                              " Top Up Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
