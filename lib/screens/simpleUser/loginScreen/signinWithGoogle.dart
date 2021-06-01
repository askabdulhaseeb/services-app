import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';

class SigninWithGoogle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            // TODO: Login with Google
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(width: 0.5, color: Colors.grey),
            ),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  child: Image.asset(googleLogo),
                ),
                SizedBox(width: 10),
                Text('Sign In with Google')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
