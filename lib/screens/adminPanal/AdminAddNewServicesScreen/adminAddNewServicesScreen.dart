import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';
import 'package:servicesApp/screens/simpleUser/loginScreen/loginScreen.dart';

class AdminAddNewServicesScreen extends StatelessWidget {
  static final routeName = '/AdminAddNewServicesScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: appName,
        actions: [
          IconButton(
            icon: Icon(
              Icons.logout,
              color: redShade,
            ),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  LoginScreen.routeName, (route) => false);
            },
          )
        ],
      ),
      body: Center(
        child: Text('Admin will Add Services Here'),
      ),
    );
  }
}
