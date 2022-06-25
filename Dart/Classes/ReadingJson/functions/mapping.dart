import '../Model/person_tile.dart';
import 'dart:convert';
import '../assets/people.json' as data;


class Mapping {
  static Future<List<Person>> getData() async {
    final data = await DefaultAssetBundle.of().loadString('assets/users.json');
    //Now it have loaded the json to a variable (it's still a json)
    final body = json.decode(data);
    //Create a list of user
    return body.map<Person>(Person.fromJson).toList();
  }
}
