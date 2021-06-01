import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:servicesApp/screens/adminPanal/adminHomeScreen/adminHomeScreen.dart';
import 'package:servicesApp/screens/appConstraints.dart';
import 'package:servicesApp/screens/simpleUser/homeScreen/homeScreen.dart';

class LoginButton extends StatelessWidget {
  final String email;
  final String password;
  final Function onSaveValue;

  LoginButton({
    @required this.email,
    @required this.password,
    @required this.onSaveValue,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {
          onSaveValue();
          print(email);
          (email == 'admin@gmail.com' && password == 'admin123')
              ? Navigator.of(context)
                  .pushReplacementNamed(AdminHomeScreen.routeName)
              : Navigator.of(context)
                  .pushReplacementNamed(HomeScreen.routeName);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45),
        ),
        color: greenShade,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Login',
            style: TextStyle(
                fontFamily: englishText, fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
