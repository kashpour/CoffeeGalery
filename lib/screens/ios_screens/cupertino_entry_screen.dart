import 'package:coffee_galery/screens/ios_screens/cupertino_home_screen.dart';
import 'package:coffee_galery/screens/ios_screens/cupertino_settings_screen.dart';
import 'package:flutter/cupertino.dart';

class CupertinoEntryScreen extends StatefulWidget {
  const CupertinoEntryScreen({super.key});

  @override
  State<CupertinoEntryScreen> createState() => _CupertinoEntryScreenState();
}

class _CupertinoEntryScreenState extends State<CupertinoEntryScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings_solid)),
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
