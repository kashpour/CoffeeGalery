import 'dart:io';

import 'package:coffee_galery/screens/ios_screens/cupertino_entry_screen.dart';
import 'package:coffee_galery/screens/andriod_screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
  // ignore: library_private_types_in_public_api
  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        themeMode: _themeMode,
        home: const HomeScreen(),
      );
    } else if (Platform.isIOS) {
      return CupertinoApp(
        theme: CupertinoThemeData(
          applyThemeToAll: true,
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          barBackgroundColor: Colors.indigo[400],
        ),
        home: const CupertinoEntryScreen(),
      );
    } else {
      return Container();
    }
  }

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }
}
