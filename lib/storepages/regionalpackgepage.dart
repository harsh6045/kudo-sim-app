import 'package:flutter/material.dart';
import 'package:kudo_sim/storepages/Widgets/Regional-card.dart';
import 'package:kudo_sim/storepages/localpackpages.dart';

class RegionalPackage extends StatelessWidget {
  const RegionalPackage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Regional",
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.deepPurple,
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
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LocalPackPages()));
                },
                child: ListView(
                  children: const [
                    RegionalCard(),
                    RegionalCard(),
                    RegionalCard(),
                    RegionalCard(),
                    RegionalCard(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
