import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {

  final String url;

  NetworkHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(url);

    if(response.statusCode == 200) {
      String data = response.body;

      return  jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}

//'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$kApiKey'