import 'package:coffee_galery/main.dart';
import 'package:coffee_galery/shared/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: customButtomNavigation(context, 1),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28.0,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    if (isDarkMode) {
                      isDarkMode = false;
                      MyApp.of(context).changeTheme(ThemeMode.light);
                    } else {
                      isDarkMode = true;
                      MyApp.of(context).changeTheme(ThemeMode.dark);
                    }
                  });
                },
                icon: isDarkMode
                    ? const Icon(
                        Icons.dark_mode,
                        size: 34.0,
                        color: Colors.black,
                      )
                    : const Icon(
                        Icons.light_mode,
                        size: 34.0,
                        color: Colors.white,
                      )),
          )
        ],
      ),
    );
  }
}
