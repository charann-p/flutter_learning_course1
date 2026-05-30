import 'package:flutter/material.dart';
import 'package:flutter_learning_course1/views/data/notifiers.dart';
import 'package:flutter_learning_course1/views/pages/home_page.dart';
import 'package:flutter_learning_course1/views/pages/profile_page.dart';
import 'package:flutter_learning_course1/widgets/bottom_bar.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: selectedPage,
        builder: (BuildContext context, dynamic value, Widget? child) {
          return pages.elementAt(selectedPage.value);
        },
      ),
      appBar: AppBar(title: Text('My First App'), centerTitle: true),
      bottomNavigationBar: BottomBar(),
    );
  }
}
