import 'dart:convert';

import 'package:http/http.dart' as http;

class API {
  Future<dynamic> get(String url) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw {'there is problem with state is ${response.statusCode}'};
    }
  }
}
