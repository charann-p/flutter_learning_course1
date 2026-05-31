import 'package:flutter/material.dart';
import 'package:flutter_learning_course1/views/data/notifiers.dart';
import 'package:flutter_learning_course1/views/pages/welcome_page.dart';
import 'package:flutter_learning_course1/widgets/hero_image.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          ValueListenableBuilder(
            valueListenable: selectedPage,
            builder: (context, value, child) {
              return ListTile(
                title: Text('Logout'),
                leading: Icon(Icons.logout),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        selectedPage.value = 0;
                        return WelcomePage();
                      },
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
    ;
  }
}
