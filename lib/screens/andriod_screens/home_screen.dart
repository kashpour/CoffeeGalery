import 'package:coffee_galery/screens/andriod_screens/details_screen.dart';
import 'package:coffee_galery/screens/andriod_screens/shared/custom_bottom_navigation.dart';
import 'package:coffee_galery/util.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkMode = false;
  bool isGV = true;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    int itemCount = 100;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: customButtomNavigation(context, 0),
      appBar: AppBar(
        actions: [
          PopupMenuButton(
              icon: Icon(
                isGV ? Icons.grid_view : Icons.view_list_rounded,
                size: 34.0,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
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
        title: Text(
          "Cafe Galery",
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
        ),
      ),
      body: SizedBox(
          width: width,
          height: height,
          child: isGV
              ? GridView.builder(
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
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(7.0),
                  itemCount: itemCount,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                          changeRoute(
                              context,
                              '${Util.images[index % 8]}$index',
                              Util.images[index % 8],
                              index);
                        },
                        child: Util.buildHeroAnimation(
                            '${Util.images[index % 8]}$index',
                            SizedBox(
                              width: 100,
                              height: 300,
                              child: Image.asset(
                                Util.images[index % 8],
                                fit: BoxFit.cover,
                              ),
                            )),
                      ),
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
