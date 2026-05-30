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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home App Test - final new'),
          centerTitle: true,
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Account'),
          ],
          onDestinationSelected: (int value) {
            print(value);
          },
          selectedIndex: 1,
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                print('Floating Action Button Pressed');
              },
              child: Icon(Icons.add),
            ),
            SizedBox(height: 16),
            FloatingActionButton(
              onPressed: () {
                print('Floating Action Button Pressed');
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(child: Text('DrawerHeader')),
              ListTile(title: Text('Drawer child 1')),
            ],
          ),
        ),
        body: Center(),
      ),
    );
  }
}
