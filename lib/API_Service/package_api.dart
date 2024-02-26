// ignore_for_file: camel_case_types

import 'package:http/http.dart' as http;
import 'package:kudo_sim/Model/Package.dart';
import 'dart:convert';

import 'package:kudo_sim/Model/PackageList.dart';

class package_api {
  Future<List<PackageList>> fetchPackageLists() async {
    final response =
        await http.get(Uri.parse('https://kudoesim.prady.in/api/packages'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);

      List<PackageList> packageLists = [];

      for (var item in data) {
        List<Package> packages = [];
        for (var packageData in item['packages']) {
          Package package = Package(
            name: packageData['name'] ?? '',
            size: packageData['size'] ?? '',
            days: packageData['days'] ?? 0,
            coverage: packageData['coverage'] ?? '',
            additionalText: packageData['additionalText'] ?? '',
            price: packageData['price'] ?? '',
            pId: packageData['p_id'] ?? 0,
          );
          packages.add(package);
        }

        PackageList packageList = PackageList(
          name: item['name'] ?? '',
          code: item['code'] ?? '',
          flagUrl: item['flagURL'] ?? '',
          isPopular: item['isPopular'] ?? false,
          packages: packages,
        );

        packageLists.add(packageList);
      }

      return packageLists;
    } else {
      throw Exception('Failed to load package lists');
    }
  }
}
