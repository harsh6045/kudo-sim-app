// ignore_for_file: avoid_print

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kudo_sim/API_Service/package_api.dart';
import 'package:kudo_sim/Model/PackageList.dart';
import 'package:kudo_sim/storepages/Widgets/dashboard-card.dart';
import 'package:kudo_sim/storepages/globalpackagepage.dart';
import 'package:kudo_sim/tabs/ActivePlan.dart';
import 'package:kudo_sim/tabs/CountryList.dart';
import 'package:kudo_sim/tabs/DailyDeals.dart';
import 'package:kudo_sim/tabs/ESimStore.dart';
import 'package:kudo_sim/tabs/InactivePlan.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  late List<PackageList> packageLists = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchPackageLists();
  }

  Future<void> fetchPackageLists() async {
    try {
      final apiService = package_api();
      final fetchedPackageLists = await apiService.fetchPackageLists();
      setState(() {
        packageLists = fetchedPackageLists;
        _isLoading = false;
      });
    } catch (e) {
      print('Error fetching package lists: $e');
    }
  }

  bool generateRandomBool() {
    Random random = Random();
    return random.nextBool();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Container(
                height: 150,
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CountryList()));
                            },
                            child: const Text(
                              "Welcome Back",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF778AA6),
                                  fontSize: 20),
                            ),
                          ),
                          Material(
                            elevation: 5,
                            child: SvgPicture.asset(
                              "assets/images/Pro.svg",
                              fit: BoxFit.fill,
                            ),
                          )
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
                                builder: (context) => DailyDeals()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
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
                                " eSIM",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CountryList()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                height: 43,
                                width: 130,
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
                                  padding: EdgeInsets.only(left: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/btn-icon-inactive.svg', // Your SVG file path here
                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Store",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'poppins',
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: packageLists.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            if (generateRandomBool()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ActivePlan(
                                      cityName: packageLists[index].name,
                                    ),
                                  ));
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => InactivePlan(
                                      cityName: packageLists[index].name,
                                      package: packageLists[index].packages,
                                    ),
                                  ));
                            }
                          },
                          child: DashboardCard(
                            cityName: packageLists[index].name,
                            path:
                                'https://storage.googleapis.com/kudo-assets/' +
                                    packageLists[index].code +
                                    '.svg',
                            id: packageLists[index].packages.first.pId,
                            validity:
                                packageLists[index].packages[0].days.toString(),
                            data:
                                packageLists[index].packages[0].size.toString(),
                          ),
                        );
                      }),
            ),
          ],
        ),
      ),
    );
  }
}
