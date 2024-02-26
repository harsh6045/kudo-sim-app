import 'package:http/http.dart' as http;
import 'dart:convert';

class QR_api {
  Future<String> fetchQR() async {
    final response =
        await http.get(Uri.parse('https://kudoesim.prady.in/api/esimQR'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      final String qr = responseData['QR'];
      return qr;
    } else {
      throw Exception('Failed to fetch QR: ${response.statusCode}');
    }
  }
}
