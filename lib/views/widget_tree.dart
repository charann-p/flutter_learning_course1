import 'package:flutter/material.dart';
import 'package:flutter_learning_course1/views/data/notifiers.dart';
import 'package:flutter_learning_course1/views/pages/home_page.dart';
import 'package:flutter_learning_course1/views/pages/profile_page.dart';
import 'package:flutter_learning_course1/views/pages/settings_page.dart';
import 'package:flutter_learning_course1/widgets/bottom_bar.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: selectedPage,
        builder: (BuildContext context, dynamic selectedPage, Widget? child) {
          return pages.elementAt(selectedPage);
        },
      ),
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        actions: [
          ValueListenableBuilder(
            valueListenable: darkThemeNotifier,
            builder: (context, value, child) {
              return IconButton(
                onPressed: () {
                  darkThemeNotifier.value = !darkThemeNotifier.value;
                },
                icon: darkThemeNotifier.value
                    ? Icon(Icons.light_mode)
                    : Icon(Icons.dark_mode),
              );
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage();
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
