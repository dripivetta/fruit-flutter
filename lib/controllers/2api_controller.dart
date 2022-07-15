import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../models/fruit.dart';

class APIcontroller {
  ValueNotifier<List<Fruit>> frutas = ValueNotifier<List<Fruit>>([]);
  //ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  callAPI() async {
    var client = http.Client();
    //inLoader.value = true;
    var response =
        await client.get(Uri.parse('https://www.fruityvice.com/api/fruit/all'));

    var decodedJson = jsonDecode(response.body) as List;
    //inLoader.value = false;
    return frutas.value = decodedJson.map((e) => Fruit.fromJson(e)).toList();
  }
}
