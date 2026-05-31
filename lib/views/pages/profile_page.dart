import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isCheckboxChecked = false;
  bool isSwitchOn = false;
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            SizedBox(height: 20.0),
            Text(controller.text),
            SizedBox(height: 20.0),
            Checkbox.adaptive(
              tristate: true,
              value: isCheckboxChecked,
              onChanged: (bool? value) => setState(() {
                isCheckboxChecked = value;
              }),
              // onChanged: (bool? value) {
              //   setState(() {
              //     isCheckboxChecked = value;
              //   });
            ),
            SizedBox(height: 20.0),
            CheckboxListTile.adaptive(
              title: Text('Check here'),
              tristate: true,
              value: isCheckboxChecked,
              onChanged: (bool? value) {
                setState(() {
                  isCheckboxChecked = value;
                });
              },
            ),
            SizedBox(height: 20.0),
            Switch.adaptive(
              value: isSwitchOn,
              onChanged: (bool value) => setState(() {
                isSwitchOn = value;
              }),
            ),
            SizedBox(height: 20.0),
            SwitchListTile.adaptive(
              value: isSwitchOn,
              onChanged: (bool value) => setState(() {
                isSwitchOn = value;
              }),
            ),
            SizedBox(height: 20.0),
            Slider.adaptive(
              value: sliderValue,
              max: 10,
              divisions: 10,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                  print(value);
                });
              },
            ),
            GestureDetector(
              child: Image.asset('assets/images/macos_bg.jpg'),
              onTap: () => print('image 1 tapped'),
              onDoubleTap: () => print('image 1 double tapped'),
              onLongPress: () => print('image 1 long pressed'),
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () => print('image 1 tapped'),
              splashColor: Colors.amber,
              child: Container(
                width: double.infinity,
                height: 200,
                color: Colors.white24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
