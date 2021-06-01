import 'package:flutter/material.dart';

enum UserType { admin, user }

class MyUser {
  final String memberID;
  final UserType userType;
  final String name;

  const MyUser({
    @required this.memberID,
    @required this.userType,
    @required this.name,
  });
}
