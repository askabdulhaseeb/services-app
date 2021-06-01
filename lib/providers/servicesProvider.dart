import 'package:flutter/material.dart';

class MyServices {
  final String serviceID;
  final String title;
  final String imageUrl;
  final String detail;
  int interestCount = 0;
  int commentCount = 0;
  int buyCount = 0;

  MyServices({
    @required this.serviceID,
    @required this.title,
    @required this.imageUrl,
    @required this.detail,
  });
}

class MyServicesProvider extends ChangeNotifier {
  List<MyServices> _myServices = [
    MyServices(
      serviceID: '1',
      title: 'Web Services',
      imageUrl:
          'https://seo-trench.com/wp-content/uploads/2019/11/12-Websites-You-Should-Check-Out-to-Learn-Web-Development-Fast.png',
      detail:
          '''The origin of the word "travel" is most likely lost to history. The term "travel" may originate from the Old French word travail, which means 'work'.[3] According to the Merriam Webster dictionary, the first known use of the word travel was in the 14th century. It also states that the word comes from Middle English travailen, travelen (which means to torment, labor, strive, journey) and earlier from Old French travailler (which means to work strenuously, toil). In English we still occasionally use the words "travail", which means struggle. According to Simon Winchester in his book The Best Travelers' Tales (2004), the words "travel" and "travail" both share an even more ancient root: a Roman instrument of torture called the tripalium (in Latin it means "three stakes", as in to impale). This link may reflect the extreme difficulty of travel in ancient times. Travel in modern times may or may not be much easier depending upon the destination.''',
    ),
    MyServices(
      serviceID: '2',
      title: 'Photo Editing Services',
      imageUrl:
          'https://st.depositphotos.com/1000123/2864/i/600/depositphotos_28645711-stock-photo-sustainable-development-and-eco-energy.jpg',
      detail:
          '''The origin of the word "travel" is most likely lost to history. The term "travel" may originate from the Old French word travail, which means 'work'.[3] According to the Merriam Webster dictionary, the first known use of the word travel was in the 14th century. It also states that the word comes from Middle English travailen, travelen (which means to torment, labor, strive, journey) and earlier from Old French travailler (which means to work strenuously, toil). In English we still occasionally use the words "travail", which means struggle. According to Simon Winchester in his book The Best Travelers' Tales (2004), the words "travel" and "travail" both share an even more ancient root: a Roman instrument of torture called the tripalium (in Latin it means "three stakes", as in to impale). This link may reflect the extreme difficulty of travel in ancient times. Travel in modern times may or may not be much easier depending upon the destination.''',
    ),
    MyServices(
      serviceID: '3',
      title: 'Mobile App Services',
      imageUrl:
          'https://vaival.com/wp-content/uploads/2021/01/vaival-application.png',
      detail:
          '''The origin of the word "travel" is most likely lost to history. The term "travel" may originate from the Old French word travail, which means 'work'.[3] According to the Merriam Webster dictionary, the first known use of the word travel was in the 14th century. It also states that the word comes from Middle English travailen, travelen (which means to torment, labor, strive, journey) and earlier from Old French travailler (which means to work strenuously, toil). In English we still occasionally use the words "travail", which means struggle. According to Simon Winchester in his book The Best Travelers' Tales (2004), the words "travel" and "travail" both share an even more ancient root: a Roman instrument of torture called the tripalium (in Latin it means "three stakes", as in to impale). This link may reflect the extreme difficulty of travel in ancient times. Travel in modern times may or may not be much easier depending upon the destination.''',
    ),
    MyServices(
      serviceID: '4',
      title: 'Graphic Designing Servies',
      imageUrl:
          'https://www.infomist.com/wp-content/uploads/2014/09/graphicdesign1.jpg',
      detail:
          '''The origin of the word "travel" is most likely lost to history. The term "travel" may originate from the Old French word travail, which means 'work'.[3] According to the Merriam Webster dictionary, the first known use of the word travel was in the 14th century. It also states that the word comes from Middle English travailen, travelen (which means to torment, labor, strive, journey) and earlier from Old French travailler (which means to work strenuously, toil). In English we still occasionally use the words "travail", which means struggle. According to Simon Winchester in his book The Best Travelers' Tales (2004), the words "travel" and "travail" both share an even more ancient root: a Roman instrument of torture called the tripalium (in Latin it means "three stakes", as in to impale). This link may reflect the extreme difficulty of travel in ancient times. Travel in modern times may or may not be much easier depending upon the destination.''',
    ),
  ];

  List<MyServices> get getServices {
    return [..._myServices];
  }
}
