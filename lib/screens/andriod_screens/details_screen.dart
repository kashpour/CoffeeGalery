import 'package:coffee_galery/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class DetailsScreen extends StatelessWidget {
  final String itemPath;
  final String itemTag;
  final int index;
  const DetailsScreen(
      {super.key,
      required this.itemPath,
      required this.itemTag,
      required this.index});

  @override
  Widget build(BuildContext context) {
    timeDilation = 2.0;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          size: 34.0,
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.white
              : Colors.black,
        ),
        backgroundColor: Colors.indigo,
        title: Text(
          "Item Details",
          style: TextStyle(
            fontSize: 28.0,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Util.showHeroAnimation(itemPath, itemTag, width, index),
        ),
      ),
    );
  }
}
