import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';
import '../loginScreen/loginScreen.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        //TODO:SignUp Email Password Check
        Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.green[300], greenShade],
            )),
        child: Text(
          'Sign Up',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: englishText,
          ),
        ),
      ),
    );
  }
}
