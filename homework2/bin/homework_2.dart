// import 'package:homework_2/homework_2.dart' as homework_2;

// void main(List<String> arguments) {
//   print('63070198 Patiparn Panmee');
// }
import 'dart:async';
import 'package:dio/dio.dart';
import 'dart:convert';

FutureOr<String> fetchData(String url) async {
  Dio dio = Dio();
  Response response = await dio.get(url);
  return jsonEncode(response.data);
}

const URL_WEATHER_MAP =
    "https://api.openweathermap.org/data/2.5/weather?q=Bangkok&appid=b082329391d5d3425e9f91d5c758f20c";

void main() async {
  String data = await fetchData(URL_WEATHER_MAP);
  print("URL : $URL_WEATHER_MAP\n");
  print("Current Weather Data: $data");
}
