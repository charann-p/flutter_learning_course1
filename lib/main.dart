import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: HomePageStateFul(),
    );
  }
}

class HomePageStateFul extends StatefulWidget {
  const HomePageStateFul({super.key});

  @override
  State<HomePageStateFul> createState() => _HomePageStateFulState();
}

class _HomePageStateFulState extends State<HomePageStateFul> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home App Test'), centerTitle: true),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Account'),
        ],
        onDestinationSelected: (int value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedIndex: currentIndex,
      ),
      body: currentIndex == 0
          ? Center(child: Text('Current index is $currentIndex'))
          : Center(child: Text('Current index is $currentIndex')),
    );
  }
}
