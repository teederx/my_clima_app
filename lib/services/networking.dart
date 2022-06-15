import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{

  NetworkHelper({required this.url});

  final String url;

  Future getData() async {
    //TODO: FIND OUT WHAT 'RESPONSE' DOES IN THE FLUTTER COOKBOOK IN THE HTTP CLASS...
    http.Response response = await http.get(Uri.parse(url));
    //200 means the request was received successfully...
    if (response.statusCode == 200) {
      var data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}