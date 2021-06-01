import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';
import 'package:servicesApp/screens/simpleUser/serviceDetailScreen/serviceDetailScreen.dart';

class ServicesBanner extends StatelessWidget {
  final String title;
  final String imageUrl;

  const ServicesBanner({@required this.title, @required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamedAndRemoveUntil(
          ServiceDetailScreen.routeName,
          (route) => true,
        );
      },
      child: Container(
        height: 250,
        margin: const EdgeInsets.only(bottom: 4),
        child: Card(
          elevation: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: Text(
                          title,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: englishText,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.card_membership,
                        color: greenShade,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: Image.network(imageUrl),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
