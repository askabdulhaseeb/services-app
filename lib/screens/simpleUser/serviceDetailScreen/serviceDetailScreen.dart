import 'package:flutter/material.dart';
import 'package:servicesApp/screens/simpleUser/serviceDetailScreen/serviceDetail.dart';
import 'UserActions/userAction.dart';

class ServiceDetailScreen extends StatelessWidget {
  static final routeName = '/ServiceDetailScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ServiceDetail(),
            ),
            UserAction(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
