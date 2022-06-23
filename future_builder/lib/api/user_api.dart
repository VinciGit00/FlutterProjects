import 'package:flutter/material.dart';
import 'package:future_builder/model/user.dart';
//You need this library to do json.decode
import 'dart:convert';

class UserApi {
  /// Load the json file
  static Future<List<User>> getUserLocally(BuildContext context) async {
    final data =
        await DefaultAssetBundle.of(context).loadString('assets/users.json');
    //Now it have loaded the json to a variable (it's still a json)
    final body = json.decode(data);
    //Create a list of user
    return body.map<User>(User.fromJson).toList();
  }
}
