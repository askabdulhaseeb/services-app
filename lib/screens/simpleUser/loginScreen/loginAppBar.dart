import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';

AppBar loginAppBar() {
  return AppBar(
    iconTheme: IconThemeData(
      color: greenShade,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    title: Row(
      children: [
        Container(
          height: 30,
          child: Image.asset(appLogo),
        ),
        SizedBox(
          width: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: appName,
        )
      ],
    ),
  );
}
