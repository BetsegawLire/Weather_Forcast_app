import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final url;
  NetworkHelper({this.url});

  Future getData() async {
    Uri urlAddress = Uri.parse(url);

    http.Response response = await http.get(urlAddress);

    if (response.statusCode == 200) {
      var data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
