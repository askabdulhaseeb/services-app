import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:servicesApp/screens/adminPanal/adminHomeScreen/adminHomeScreen.dart';
import 'package:servicesApp/screens/appConstraints.dart';
import 'package:servicesApp/screens/simpleUser/homeScreen/homeScreen.dart';
import './signupLine.dart';
import 'loginButton.dart';
import 'signinWithGoogle.dart';

class LoginScreen extends StatefulWidget {
  static final routeName = '/LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email, _password;
  bool _showPassword = true;
  final GlobalKey<FormState> _loginFormkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    InputDecoration _textInputDecoration(String text) {
      return InputDecoration.collapsed(
        hintText: text,
        hintStyle: TextStyle(fontFamily: englishText, fontSize: 15),
      );
    }

    onSaveValue() {
      _loginFormkey.currentState.save();
    }

    var _emailtextFormField = TextFormField(
      obscureText: false,
      decoration: _textInputDecoration('Email'),
      onSaved: (newValue) => _email = newValue,
      validator: (value) {
        if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
          return 'Email is Invalide';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
    );
    var _passwordtextFormField = TextFormField(
      obscureText: _showPassword,
      decoration: _textInputDecoration('Password'),
      onSaved: (newValue) => _password = newValue,
      validator: (value) {
        if (value.isEmpty) {
          return 'Enter Password';
        }
        return null;
      },
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
    );
    var _boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(45),
      border: Border.all(
        color: greenShade,
      ),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Form(
              key: _loginFormkey,
              child: Column(
                children: [
                  SizedBox(height: size.height / 8),
                  Container(
                    height: 120,
                    child: Image.asset(appLogo),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 46,
                    width: double.infinity,
                    decoration: _boxDecoration,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: _emailtextFormField,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 46,
                    width: double.infinity,
                    decoration: _boxDecoration,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: _passwordtextFormField,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: GestureDetector(
                          onTap: () {
                            // TODO: Forget Password Click
                          },
                          child: Text('Forget Password?  ')),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {
                        onSaveValue();
                        (_email == 'admin' && _password == 'admin')
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
                              fontFamily: englishText,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SigninWithGoogle(),
                SizedBox(height: 10),
                SignUpLine(),
                SizedBox(height: 24),
              ],
            )
          ],
        ),
      ),
    );
  }
}
