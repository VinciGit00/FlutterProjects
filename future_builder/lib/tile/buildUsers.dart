import 'package:flutter/material.dart';
import 'package:future_builder/model/user.dart';
import 'package:flutter/material.dart';

Widget buildUsers(List<User> users) => ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: users.length,
      itemBuilder: (context, index) {
        final singleuser = users[index];
        return ListTile(
          title: Text(singleuser.username),
          subtitle: Text(singleuser.email),
        );
      },
    );
