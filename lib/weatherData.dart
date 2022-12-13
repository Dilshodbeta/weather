import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather/weathermodel.dart';

class WeatherData {
  Future<weather> getData(var latitude, var longitude) async {
    var uriCall = Uri.parse(
        'http:api.weatherapi.com/v1/current.json?key=9d3e102e8d9d4add868133432221903&q=$latitude');

    var response = await http.get(uriCall);
    var body = jsonDecode(response.body);
    return weather.fromJson(body);
  }
}
//fdhhsdhfkj