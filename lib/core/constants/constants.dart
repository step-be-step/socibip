import 'package:flutter/material.dart';
import 'package:socibip/features/feed/feed_screen.dart';
import 'package:socibip/features/home/screens/home_screen.dart';
import 'package:socibip/features/post/screens/add_post_screen.dart';

class Constants {
  static const logoPath = 'assets/images/logo.png';
  static const loginEmotePath = 'assets/images/loginEmote.png';
  static const googlePath = 'assets/images/google.png';

  static const bannerDefault =
      'https://sun9-36.userapi.com/impg/S9-5H6vjnstBOpqYCZCkf9fB5ogxKv4JbSkfSg/4Zl9kmPLWgc.jpg?size=800x450&quality=95&sign=44d60e3a8e215542bb32841638508d45&type=album';
  static const avatarDefault =
      'https://sun9-74.userapi.com/impg/nb_Dw57y4AoK1FUZOzH4hOVCg-8XnRaXIzrEWQ/ayjQJyS5MoA.jpg?size=256x256&quality=95&sign=d130ce0df83e305914eb5e00d04526db&type=album';

  static const tabWidgets = [
    FeedScreen(),
    AddPostScreen(),
  ];

  static const IconData up =
      IconData(0xe800, fontFamily: 'MyFlutterApp', fontPackage: null);
  static const IconData down =
      IconData(0xe801, fontFamily: 'MyFlutterApp', fontPackage: null);

  static const awardsPath = 'assets/images/awards';

  static const awards = {
    'awesomeAns': '${Constants.awardsPath}/awesomeanswer.png',
    'gold': '${Constants.awardsPath}/gold.png',
    'platinum': '${Constants.awardsPath}/platinum.png',
    'helpful': '${Constants.awardsPath}/helpful.png',
    'plusone': '${Constants.awardsPath}/plusone.png',
    'rocket': '${Constants.awardsPath}/rocket.png',
    'thankyou': '${Constants.awardsPath}/thankyou.png',
    'til': '${Constants.awardsPath}/til.png',
  };
}
