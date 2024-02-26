import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kudo_sim/tabs/CountryTile.dart';

class LocalList extends StatefulWidget {
  const LocalList({super.key});

  @override
  State<LocalList> createState() => _LocalListState();
}

class _LocalListState extends State<LocalList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.deepPurple,
        ),
        title: const Text(
          "Local eSIM",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 55,
                child: TextField(
                  style: TextStyle(fontFamily: "Poppins"),
                  decoration: InputDecoration(
                    hintText: 'Search Location',
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
            Expanded(
              child: ListView(
                children: const [
                  CountryTile(
                    region: 'Europe +',
                    path: 'assets/images/european union (1).png',
                  ),
                  CountryTile(
                    region: 'Germany',
                    path: 'assets/images/germany(1) 1.png',
                  ),
                  CountryTile(
                    region: 'France',
                    path: 'assets/images/france 1.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
