import 'package:flutter/material.dart';
import 'package:flutter_learning_course1/views/pages/home_page.dart';
import 'package:flutter_learning_course1/views/pages/profile_page.dart';
import 'package:flutter_learning_course1/widgets/bottom_bar.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(0),
      appBar: AppBar(title: Text('My First App'), centerTitle: true),
      bottomNavigationBar: BottomBar(),
    );
  }
}