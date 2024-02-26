import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kudo_sim/API_Service/package_api.dart';
import 'package:kudo_sim/Model/Package.dart';
import 'package:kudo_sim/Model/PackageList.dart';
import 'package:kudo_sim/storepages/globalpackagepage.dart';
import 'package:kudo_sim/storepages/localpackpages.dart';
import 'package:kudo_sim/storepages/regionalpackgepage.dart';
import 'package:kudo_sim/tabs/CountryTile.dart';
import 'package:kudo_sim/tabs/LocalList.dart';

class CountryList extends StatefulWidget {
  const CountryList({Key? key}) : super(key: key);

  @override
  State<CountryList> createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {
  late List<PackageList> packageLists = [];
  late List<Package> europePackagesGlobal = [];
  late List<Package> germanyPackagesGlobal = [];
  late List<Package> globalPackagesGlobal = [];
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

        List<PackageList> europePackageLists = packageLists
            .where((packageList) => packageList.name == 'Europe +')
            .toList();

        List<Package> europePackages = [];

        for (var packageList in europePackageLists) {
          europePackages.addAll(packageList.packages);
        }

        europePackagesGlobal = europePackages;

        // worldwide
        List<PackageList> worldWideList = packageLists
            .where((packageList) => packageList.name == 'WorldWide')
            .toList();

        List<Package> worldWidePackages = [];

        for (var packageList in worldWideList) {
          worldWidePackages.addAll(packageList.packages);
        }

        globalPackagesGlobal = worldWidePackages;
        List<PackageList> germanyPackageLists = packageLists
            .where((packageList) => packageList.name == 'Germany')
            .toList();

        List<Package> germanyPackages = [];
        for (var packageList in germanyPackageLists) {
          germanyPackages.addAll(packageList.packages);
        }

        this.germanyPackagesGlobal = germanyPackages;
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
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.deepPurple,
        ),
        title: Text(
          "eSIM Store",
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Going to",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      child: TextField(
                        style: TextStyle(fontFamily: "Poppins", fontSize: 12),
                        decoration: InputDecoration(
                          hintText: 'Country, Region',
                          filled: true,
                          fillColor: Color.fromARGB(89, 194, 205, 220),
                          suffixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "eSIM",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  print("europe " + europePackagesGlobal.length.toString());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegionalPackage(
                          packages: europePackagesGlobal,
                        ),
                      ));
                },
                child: const CountryTile(
                  region: 'Regional',
                  path: 'assets/images/european union (1).png',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GlobalPackage(
                          packages: globalPackagesGlobal,
                        ),
                      ));
                },
                child: const CountryTile(
                  region: 'Global',
                  path: 'assets/images/germany(1) 1.png',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LocalPackPages(
                          packages: germanyPackagesGlobal,
                        ),
                      ));
                },
                child: CountryTile(
                  region: 'Local',
                  path: 'assets/images/france 1.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  height: 78,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.5),
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
                        SvgPicture.asset(
                          'assets/images/btn-icon-inactive.svg', // Your SVG file path here
                          fit: BoxFit.cover,
                          width: 45,
                          height: 45,
                        ),
                        // SvgPicture.asset(
                        //   'assets/images/dailysim 1.svg', // Your SVG file path here
                        //   fit: BoxFit.cover,
                        //   width: 45,
                        //   height: 45,
                        // ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "See New Daily Deals",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Discover Daily Country Deals ",
                              style: TextStyle(
                                color: Colors.white60,
                                fontFamily: 'poppins',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Regional",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "eSIM",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              CountryTile(
                region: 'Africa',
                path: 'assets/images/european union (1).png',
              ),
              CountryTile(
                region: 'Asia',
                path: 'assets/images/germany(1) 1.png',
              ),
              CountryTile(
                region: 'Europe',
                path: 'assets/images/france 1.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
