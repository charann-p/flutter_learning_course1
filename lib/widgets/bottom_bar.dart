import 'package:flutter/material.dart';
import 'package:flutter_learning_course1/views/data/notifiers.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPage,
      builder: (context, value, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          selectedIndex: selectedPage.value,
          onDestinationSelected: (value) {
            selectedPage.value = value;
          },
        );
      },
    );
  }
}