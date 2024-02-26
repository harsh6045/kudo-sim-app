import 'package:flutter/material.dart';
import 'package:kudo_sim/Model/Package.dart';
import 'package:kudo_sim/storepages/Widgets/local-card.dart';

class LocalPackPages extends StatelessWidget {
  List<Package> packages;
  LocalPackPages({super.key, required this.packages});

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Local",
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.deepPurple,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                  itemCount: packages.length,
                  itemBuilder: (context, index) {
                    return LocalCard(
                      cityName: packages[index].coverage.toString(),
                      data: packages[index].size.toString(),
                      price: packages[index].price.toString(),
                      validity: packages[index].days.toString(),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}