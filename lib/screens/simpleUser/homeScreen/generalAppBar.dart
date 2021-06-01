import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';

AppBar generalAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: appName,
    actions: [
      IconButton(
          icon: Icon(
            Icons.logout,
            color: redShade,
          ),
          onPressed: () {})
    ],
  );
}
