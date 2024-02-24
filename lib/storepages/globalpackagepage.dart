import 'package:flutter/material.dart';
import 'package:kudo_sim/storepages/Widgets/Global-card.dart';
import 'package:kudo_sim/storepages/regionalpackgepage.dart';

class GlobalPackage extends StatelessWidget {
  const GlobalPackage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();

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
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegionalPackage()));
                },
                child: ListView(
                  children: const [
                    GlobalCard(),
                    GlobalCard(),
                    GlobalCard(),
                    GlobalCard(),
                    GlobalCard(),
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
