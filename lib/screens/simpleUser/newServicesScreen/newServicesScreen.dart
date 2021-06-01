import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:servicesApp/providers/servicesProvider.dart';
import 'servicesBanner.dart';

class NewServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _services = Provider.of<MyServicesProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        itemCount: _services.getServices.length,
        itemBuilder: (context, index) => ServicesBanner(
          title: _services.getServices[index].title,
          imageUrl: _services.getServices[index].imageUrl,
        ),
      ),
    );
  }
}
