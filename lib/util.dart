import 'package:flutter/material.dart';

class Util {
  static const List<String> images = [
    './assets/1.jpg',
    './assets/2.jpg',
    './assets/3.jpg',
    './assets/4.jpg',
    './assets/5.jpg',
    './assets/6.jpg',
    './assets/7.jpg',
    './assets/8.jpg',
  ];
  static Widget buildHeroAnimation(String tag, Widget child) {
    return Hero(tag: tag, child: child);
  }

  static Widget showHeroAnimation(
      String path, String tag, double width, int index) {
    return Hero(
        tag: tag,
        child: SizedBox(
          width: width,
          child: Image.asset(images[index % 8]),
        ));
  }
}
