import 'package:flutter/material.dart';
import 'package:kudo_sim/Model/Package.dart';
import 'package:kudo_sim/storepages/Widgets/Global-card.dart';
import 'package:kudo_sim/storepages/regionalpackgepage.dart';

class GlobalPackage extends StatelessWidget {
  List<Package> packages;

  GlobalPackage({super.key, required this.packages});
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Global",
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.deepPurple, // Change the color of the back button here
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _searchController,
              style: const TextStyle(color: Color(0xFF1C1E2F)),
              decoration: InputDecoration(
                focusColor: Colors.white,
                hintText: "Search location",
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color.fromARGB(255, 207, 215, 227),
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(30.0), // Set border radius here
                  borderSide: BorderSide.none, // Remove the border
                ),
              ),
            ),
            const SizedBox(
                height: 20), // Add some spacing between search bar and list
            ListView.builder(
                shrinkWrap: true,
                itemCount: packages.length,
                itemBuilder: (context, index) {
                  return GlobalCard(
                    cityName: packages[index].coverage.toString(),
                    data: packages[index].size.toString(),
                    price: packages[index].price.toString(),
                    validity: packages[index].days.toString(),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
