import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';
import '../loginScreen/loginScreen.dart';

class SignInLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'If you already have an account ',
          style: TextStyle(
            fontSize: 11,
            color: greenShade,
            fontFamily: englishText,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
          },
          child: Text(
            'Sign In',
            style: TextStyle(
              color: redShade,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }
}
