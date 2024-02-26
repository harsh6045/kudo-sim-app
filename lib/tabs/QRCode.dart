import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kudo_sim/API_Service/QR_api.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeInstallation extends StatefulWidget {
  const QRCodeInstallation({super.key});

  @override
  State<QRCodeInstallation> createState() => _QRCodeInstallationState();
}

class _QRCodeInstallationState extends State<QRCodeInstallation> {
  String qrCodeData = '';

  @override
  void initState() {
    super.initState();
    fetchQRCode();
  }

  Future<void> fetchQRCode() async {
    try {
      final apiService = QR_api();
      final qrCode = await apiService.fetchQR();
      setState(() {
        qrCodeData = qrCode;
      });
    } catch (e) {
      print('Error fetching QR code: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.deepPurple,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: double.infinity,
              child: Text(
                "QR Code Install",
                style: TextStyle(
                    color: Color(0xFFD703FF),
                    fontFamily: "Poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: const Text(
                "STEP 1 Install ESim",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 26,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 90,
              width: 300,
              child: const Text(
                "Scan the QR code by printing out or displaying the code to another device to install your eSIM",
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Poppins",
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              child: Center(
                child: qrCodeData.isNotEmpty
                    ? QrImageView(
                        data: qrCodeData,
                        version: QrVersions.auto,
                        size: 150,
                      )
                    : CircularProgressIndicator(),
              ),
            ),
            Container(
              height: 40,
              width: double.infinity,
              child: const Text(
                "STEP 2 Access Data",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 214,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFDCE2EC), // Border color
                        width: 2, // Border width
                      ),
                      color: Color(0xFFF3F4F5),
                      borderRadius: BorderRadius.circular(18)),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xFFC2CDDC),
                              width: 1,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8, left: 18, right: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Network",
                                    style: TextStyle(
                                        fontFamily: "poppins",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Vodafone, T-Mobile, O2",
                                    style: TextStyle(
                                      fontFamily: "poppins",
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.chevron_right_rounded,
                                color: Colors.black,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xFFC2CDDC),
                              width: 1,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, left: 18),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "APN",
                                    style: TextStyle(
                                        fontFamily: "poppins",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Kudo Plus",
                                    style: TextStyle(
                                      fontFamily: "poppins",
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, left: 18),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Data Roaming",
                                    style: TextStyle(
                                        fontFamily: "poppins",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Make sure that data roaming is ON",
                                    style: TextStyle(
                                      fontFamily: "poppins",
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: const Text(
                "You are not sure how to install?",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 43,
                  width: 230,
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
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "See video tutorial",
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
