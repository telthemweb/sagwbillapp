import 'package:http/http.dart' as http;
import 'package:sagehill/functions/Appurl.dart';

class Telthemweb {
  Future<void> sendMessage(String phoneNumber, String msg) async {
    const url = Baseurl.SMS_BASEURL;

    final response = await http.post(
      Uri.parse(url),
      body: {
        'sms': msg,
        'number': phoneNumber,
        'title': "Telthewmweb",
      },
    );

    if (response.statusCode == 200) {
      print('HTTP request successful!');
      print('Response body: ${response.body}');
    } else {
      print('HTTP request failed with status code: ${response.statusCode}');
    }
  }
}
