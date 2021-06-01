import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:servicesApp/providers/servicesProvider.dart';
import 'package:servicesApp/screens/adminPanal/adminHomeScreen/adminHomeScreen.dart';
import 'package:servicesApp/screens/adminPanal/adminNotificationScreen.dart/adminNotificationScreen.dart';
import 'package:servicesApp/screens/adminPanal/adminServicesScreen/adminServicesScreen.dart';
import 'package:servicesApp/screens/simpleUser/homeScreen/homeScreen.dart';
import 'package:servicesApp/screens/simpleUser/loginScreen/loginScreen.dart';
import 'package:servicesApp/screens/simpleUser/serviceDetailScreen/serviceDetailScreen.dart';
import 'package:servicesApp/screens/simpleUser/signupScreen/signupScreen.dart';
import 'package:servicesApp/screens/simpleUser/splashScreen.dart/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: MyServicesProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Desh Mukti Biplob',
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen(),
        routes: {
          // Simple User
          LoginScreen.routeName: (ctx) => LoginScreen(),
          SignUpScreen.routeName: (ctx) => SignUpScreen(),
          HomeScreen.routeName: (ctx) => HomeScreen(),
          ServiceDetailScreen.routeName: (ctx) => ServiceDetailScreen(),

          // Admin Panal
          AdminHomeScreen.routeName: (ctx) => AdminHomeScreen(),
          AdminNotificationScreen.routeName: (ctx) => AdminNotificationScreen(),
          AdminServicesScreen.routeName: (ctx) => AdminServicesScreen(),
        },
      ),
    );
  }
}
