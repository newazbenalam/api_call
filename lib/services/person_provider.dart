import 'dart:convert';

import 'package:api_call/modules/person.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class PersonProvider with ChangeNotifier {
  List<Person> persons = [];

  Future<void> addPerson(Person person) async {
    const String url =
        "https://class-api-call-b3037-default-rtdb.asia-southeast1.firebasedatabase.app/person.json";

    final response =
        await http.post(Uri.parse(url), body: jsonEncode(person.toMap()));

    if (response.statusCode != 200) return;
    debugPrint(response.body);
  }
}
