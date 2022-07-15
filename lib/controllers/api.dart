import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/fruit.dart';

class FechFruit {
  var data = [];
  List<Fruit> results = [];
  String fethurl = "https://www.fruityvice.com/api/fruit/all";
  Future<List<Fruit>> getFruitList({String? query}) async {
    var url = Uri.parse(fethurl);
    var response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        data = json.decode(response.body);
        results = data.map((e) => Fruit.fromJson(e)).toList();
        if (query != null) {
          results = results
              .where((element) =>
                  element.name!.toLowerCase().contains(query.toLowerCase()))
              .toList();
        }
      } else {
        print('api error');
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return results;
  }
}
