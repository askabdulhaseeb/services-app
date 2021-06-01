import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';
import 'siginLine.dart';
import 'signupButton.dart';
import '../loginScreen/loginAppBar.dart';

class SignUpScreen extends StatefulWidget {
  static final routeName = '/SignupScreen';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController nameController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController confirmPasswordController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool _showPassword = false;
    return Scaffold(
      appBar: loginAppBar(),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 60),
                Container(
                  height: 100,
                  child: Image.asset(appLogo),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 45,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: TextFormField(
                          obscureText: false,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Name',
                            hintStyle: TextStyle(
                                fontFamily: englishText, fontSize: 15),
                          ),
                          controller: nameController,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 45,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: TextFormField(
                          obscureText: false,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Email',
                            hintStyle: TextStyle(
                                fontFamily: englishText, fontSize: 15),
                          ),
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 45,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                fontFamily: englishText, fontSize: 15),
                          ),
                          controller: passwordController,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                      Positioned(
                        right: 10,
                        child: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: _showPassword ? Colors.blue : Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 45,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(
                                fontFamily: englishText, fontSize: 15),
                          ),
                          controller: confirmPasswordController,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                      Positioned(
                        right: 10,
                        child: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: _showPassword ? Colors.blue : Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                SignUpButton(),
                SizedBox(height: 10),
                SignInLine(),
              ],
            )),
      ),
    );
  }
}
