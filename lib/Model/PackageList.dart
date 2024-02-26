// ignore_for_file: file_names
import 'package:kudo_sim/Model/Package.dart';

class PackageList {
  String name;
  String code;
  String flagUrl;
  bool isPopular;
  List<Package> packages;

  PackageList({
    required this.name,
    required this.code,
    required this.flagUrl,
    required this.isPopular,
    required this.packages,
  });
}
