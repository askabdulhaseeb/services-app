import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';

class ServiceDetail extends StatelessWidget {
  String title = 'Web Services';
  String imageUrl =
      'https://seo-trench.com/wp-content/uploads/2019/11/12-Websites-You-Should-Check-Out-to-Learn-Web-Development-Fast.png';
  String detail =
      '''The origin of the word "travel" is most likely lost to history. The term "travel" may originate from the Old French word travail, which means 'work'.[3] According to the Merriam Webster dictionary, the first known use of the word travel was in the 14th century. It also states that the word comes from Middle English travailen, travelen (which means to torment, labor, strive, journey) and earlier from Old French travailler (which means to work strenuously, toil). In English we still occasionally use the words "travail", which means struggle. According to Simon Winchester in his book The Best Travelers' Tales (2004), the words "travel" and "travail" both share an even more ancient root: a Roman instrument of torture called the tripalium (in Latin it means "three stakes", as in to impale). This link may reflect the extreme difficulty of travel in ancient times. Travel in modern times may or may not be much easier depending upon the destination.''';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            maxLines: 3,
            style: TextStyle(
                fontSize: 22,
                fontFamily: englishText,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 200,
          width: double.infinity,
          child: Image.network(imageUrl),
        ),
        SizedBox(height: 10),
        Flexible(
          child: Text(
            detail,
            maxLines: 10,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
