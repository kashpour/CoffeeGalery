import 'package:coffee_galery/screens/andriod_screens/home_screen.dart';
import 'package:coffee_galery/screens/andriod_screens/settings_screen.dart';
import 'package:flutter/material.dart';

BottomNavigationBar customButtomNavigation(BuildContext context, int index) {
  return BottomNavigationBar(
      currentIndex: index,
      selectedItemColor: Colors.indigo[900],
      onTap: (value) {
        if (value == 0) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        } else {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const SettingsScreen()));
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ]);
}
