import 'package:coffee_galery/screens/andriod_screens/details_screen.dart';
import 'package:coffee_galery/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_down_button/pull_down_button.dart';

class CupertinoHomeScreen extends StatefulWidget {
  const CupertinoHomeScreen({super.key});

  @override
  State<CupertinoHomeScreen> createState() => _CupertinoHomeScreenState();
}

class _CupertinoHomeScreenState extends State<CupertinoHomeScreen> {
  bool isGV = true;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    int itemCount = 100;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          trailing: PullDownButton(
              itemBuilder: (context) => [
                    PullDownMenuItem(
                        onTap: () {
                          setState(() {
                            isGV = true;
                          });
                        },
                        title: "GridView"),
                    PullDownMenuItem(
                        onTap: () {
                          setState(() {
                            isGV = false;
                          });
                        },
                        title: "ListView")
                  ],
              buttonBuilder: (context, showMenu) => CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: showMenu,
                  child: const Icon(
                    CupertinoIcons.ellipsis_circle,
                    color: Colors.white,
                  ))),
          backgroundColor: Colors.indigo,
          middle: const Text(
            "Cafe Galery",
            style: TextStyle(
              fontSize: 28.0,
              color: Colors.white,
            ),
          ),
        ),
        child: SafeArea(
          child: SizedBox(
              width: width,
              height: height,
              child: isGV
                  ? GridView.builder(
                      padding: const EdgeInsets.all(7.0),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 7.0,
                        crossAxisSpacing: 7.0,
                        crossAxisCount: 2,
                      ),
                      itemCount: itemCount,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
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
        ));
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
