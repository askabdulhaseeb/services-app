import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';
import '../signupScreen/signupScreen.dart';

class SignUpLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have an account? ',
          style: TextStyle(
            fontSize: 11,
            color: greenShade,
            fontFamily: englishText,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacementNamed(SignUpScreen.routeName);
          },
          child: Text(
            'Sign Up',
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
