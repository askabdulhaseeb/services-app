import 'package:flutter/material.dart';

Color greenShade = const Color(0xFF038138);
Color redShade = const Color(0xFFEE1B25);

String appLogo = 'assets/icons/icon.jpeg';
String signinPath = 'assets/images/sign_in.png';
String signupPath = 'assets/images/sign_up.png';
String facebookLogo = 'assets/images/facebook.png';
String googleLogo = 'assets/images/google.png';
String profilePic = 'assets/images/profilePic.jpg';
String defaultUser = 'https://i.stack.imgur.com/34AD2.jpg';

const String urduText = 'Attari_Salees';
const String englishText = 'Poppins';

Text safar = Text(
  'Desh',
  style: TextStyle(
    color: greenShade,
    fontSize: 16,
    fontWeight: FontWeight.w300,
    fontFamily: englishText,
  ),
);
Text kar = Text(
  'Mukti Biplob',
  style: TextStyle(
    color: redShade,
    fontSize: 16,
    fontWeight: FontWeight.w300,
    fontFamily: englishText,
  ),
);

Row appName = Row(
  children: [
    safar,
    kar,
  ],
);
