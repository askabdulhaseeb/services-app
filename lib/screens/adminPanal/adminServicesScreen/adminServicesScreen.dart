import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:servicesApp/providers/servicesProvider.dart';
import 'package:servicesApp/screens/appConstraints.dart';
import 'package:servicesApp/screens/simpleUser/loginScreen/loginScreen.dart';
import 'package:servicesApp/screens/simpleUser/newServicesScreen/servicesBanner.dart';

class AdminServicesScreen extends StatelessWidget {
  static final routeName = '/AdminServicesScreen';
  @override
  Widget build(BuildContext context) {
    final _services = Provider.of<MyServicesProvider>(context);
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Existing Services',
              style: TextStyle(
                fontFamily: englishText,
                wordSpacing: 1,
                letterSpacing: 2,
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: greenShade,
              ),
            ),
            // const SizedBox(height: 2),
            Expanded(
              child: ListView.builder(
                itemCount: _services.getServices.length,
                itemBuilder: (context, index) => ServicesBanner(
                  title: _services.getServices[index].title,
                  imageUrl: _services.getServices[index].imageUrl,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
