import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Coffee Galery",
          style: TextStyle(
            fontSize: 28.0,
            color: Colors.white,
          ),
        ),
      ),
      body: SizedBox(
        width: width,
        height: height,
        child: GridView.count(
          mainAxisSpacing: 7.0,
          crossAxisSpacing: 7.0,
          padding: const EdgeInsets.all(7.0),
          crossAxisCount: 2,
          children: creatingGalery(10),
        ),
      ),
    );
  }

  List<Widget> creatingGalery(int numOfItems) {
    int i = 0;
    List<Widget> galery = [];
    List<String> images = [
      './assets/1.jpg',
      './assets/2.jpg',
      './assets/3.jpg',
      './assets/4.jpg',
      './assets/5.jpg',
      './assets/6.jpg',
      './assets/7.jpg',
      './assets/8.jpg',
    ];
    while (i < numOfItems) {
      galery.add(SizedBox(
        width: 100,
        height: 100,
        child: Image.asset(
          images[i % 8],
          fit: BoxFit.cover,
        ),
      ));
      i++;
    }
    return galery;
  }
}
