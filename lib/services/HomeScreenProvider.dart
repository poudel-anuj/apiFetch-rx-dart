import 'package:covid_rx/model/HomeScreenModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreenProvider {
  Future<HomeScreenModel> getData() async {
    http.Response response = await http.get(Uri.parse(
        'http://www.pockedemy.com/api/onlineevent/livenow/?format=json'));

    if (response.statusCode == 200) {
      print(response.body);
      return HomeScreenModel.fromJson(json.decode(response.body));
    } else {
      print(response.statusCode);
    }
  }
}
