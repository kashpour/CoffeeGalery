import 'package:coffee_galery/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSettingsScreen extends StatefulWidget {
  const CupertinoSettingsScreen({super.key});

  @override
  State<CupertinoSettingsScreen> createState() =>
      _CupertinoSettingsScreenState();
}

class _CupertinoSettingsScreenState extends State<CupertinoSettingsScreen> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: IconButton(
            onPressed: () {
              if (isDarkMode) {
                setState(() {
                  MyApp.of(context).changeThemeIOS(
                    const CupertinoThemeData(brightness: Brightness.light),
                  );
                  isDarkMode = false;
                });
              } else {
                setState(() {
                  MyApp.of(context).changeThemeIOS(
                      const CupertinoThemeData(brightness: Brightness.dark));
                  isDarkMode = true;
                });
              }
            },
            icon: isDarkMode
                ? const Icon(
                    Icons.light_mode,
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.dark_mode,
                    color: Colors.black,
                  )),
        backgroundColor: Colors.indigo,
        middle: const Text(
          "Settings",
          style: TextStyle(
            fontSize: 28.0,
          ),
        ),
      ),
      child: SafeArea(child: Container()),
    );
  }
}
