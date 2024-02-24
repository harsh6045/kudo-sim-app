import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kudo_sim/storepages/Widgets/dashboard-card.dart';
import 'package:kudo_sim/storepages/globalpackagepage.dart';
import 'package:kudo_sim/tabs/ActivePlan.dart';
import 'package:kudo_sim/tabs/DailyDeals.dart';
import 'package:kudo_sim/tabs/InactivePlan.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Container(
              height: 250,
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Welcome Back",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF778AA6),
                              fontSize: 20),
                        ),
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            width: 40,
                            height: 50,
                            child: Image.asset(
                              'assets/images/Pro.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Demokrat Lajqi",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GlobalPackage()));
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DailyDeals()));
                      },
                      child: const Row(
                        children: [
                          Text(
                            "My Kudo",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "  eSIM",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0),
              child: ListView(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ActivePlan()));
                      },
                      child: DashboardCard(
                        cityName: 'Europe',
                        path: 'assets/images/european union (1).png',
                      )),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InactivePlan(
                                      cityName: 'France',
                                    )));
                      },
                      child: DashboardCard(
                        cityName: 'France',
                        path: 'assets/images/france 1 (1).png',
                      )), // Add more DashboardCard widgets as needed
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    InactivePlan(cityName: "Germany")));
                      },
                      child: DashboardCard(
                        cityName: 'Germany',
                        path: 'assets/images/germany(1) 1.png',
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
