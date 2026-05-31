import 'package:flutter/material.dart';
import 'package:flutter_learning_course1/views/data/notifiers.dart';
import 'package:flutter_learning_course1/views/pages/welcome_page.dart';
import 'package:flutter_learning_course1/views/widget_tree.dart';
import 'package:flutter_learning_course1/widgets/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: darkThemeNotifier,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: darkThemeNotifier.value == true
                  ? Brightness.dark
                  : Brightness.light,
            ),
          ),
          home: WelcomePage(),
        );
      },
    );
  }
}
