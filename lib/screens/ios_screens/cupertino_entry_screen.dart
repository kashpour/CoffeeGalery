import 'package:coffee_galery/screens/ios_screens/cupertino_home_screen.dart';
import 'package:coffee_galery/screens/ios_screens/cupertino_settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoEntryScreen extends StatefulWidget {
  const CupertinoEntryScreen({super.key});

  @override
  State<CupertinoEntryScreen> createState() => _CupertinoEntryScreenState();
}

class _CupertinoEntryScreenState extends State<CupertinoEntryScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    if (CupertinoTheme.of(context).brightness == Brightness.dark) {
      isDarkMode = true;
    } else {
      isDarkMode = false;
    }
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home,
                  color: isDarkMode ? Colors.white : Colors.black)),
          BottomNavigationBarItem(
              icon: Icon(
            CupertinoIcons.settings_solid,
            color: isDarkMode ? Colors.white : Colors.black,
          )),
        ]),
        tabBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return const CupertinoHomeScreen();
          } else {
            return const CupertinoSettingsScreen();
          }
        });
  }
}
