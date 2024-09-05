import 'package:coffee_galery/screens/details_screen.dart';
import 'package:coffee_galery/util.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isGV = true;

  @override
  Widget build(BuildContext context) {
    int itemCount = 100;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
              icon: Icon(
                isGV ? Icons.grid_view : Icons.view_list_rounded,
                size: 34.0,
                color: Colors.white,
              ),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                      onTap: () {
                        setState(() {
                          isGV = true;
                        });
                      },
                      child: const Text("GridView")),
                  PopupMenuItem(
                      onTap: () {
                        setState(() {
                          isGV = false;
                        });
                      },
                      child: const Text("ListView")),
                ];
              })
        ],
        backgroundColor: Colors.indigo,
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
          child: GridView.builder(
            padding: const EdgeInsets.all(7.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 7.0,
              crossAxisSpacing: 7.0,
              crossAxisCount: 2,
            ),
            itemCount: itemCount,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  changeRoute(context, '${Util.images[index % 8]}$index',
                      Util.images[index % 8], index);
                },
                child: Util.buildHeroAnimation(
                    '${Util.images[index % 8]}$index',
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        Util.images[index % 8],
                        fit: BoxFit.cover,
                      ),
                    )),
              );
            },
          )),
    );
  }

  void changeRoute(BuildContext context, String tag, String path, int index) {
    switch (path) {
      case './assets/1.jpg':
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailsScreen(itemPath: path, itemTag: tag, index: index)));
        break;
      case './assets/2.jpg':
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailsScreen(itemPath: path, itemTag: tag, index: index)));
        break;
      case './assets/3.jpg':
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailsScreen(itemPath: path, itemTag: tag, index: index)));
        break;
      case './assets/4.jpg':
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailsScreen(itemPath: path, itemTag: tag, index: index)));
        break;
      case './assets/5.jpg':
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailsScreen(itemPath: path, itemTag: tag, index: index)));
        break;
      case './assets/6.jpg':
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailsScreen(itemPath: path, itemTag: tag, index: index)));
        break;
      case './assets/7.jpg':
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailsScreen(itemPath: path, itemTag: tag, index: index)));
        break;
      case './assets/8.jpg':
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailsScreen(itemPath: path, itemTag: tag, index: index)));
        break;
    }
  }
}
