import 'package:flutter/material.dart';
import 'package:flutter_learning_course1/widgets/hero_image.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isCheckboxChecked = false;
  bool isSwitchOn = false;
  double sliderValue = 0.0;
  String? DropDownButtonValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
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
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  print('Elevated Button Pressed');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('This is a snackbar'),
                      duration: Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                child: Text('ElevatedButton'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),
              OutlinedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Alert Dialog Title'),
                        actions: [
                          BackButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                        content: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'This is the first element inside of the alert dialog',
                              ),
                              Text(
                                'This is the second element inside of the alert dialog',
                              ),
                              Text(
                                'This is the third element inside of the alert dialog',
                              ),
                              Text(
                                'This is the fourth element inside of the alert dialog',
                              ),
                              SizedBox(height: 10.0),
                              HeroImage(),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                  print('Outlined Button Pressed');
                },
                child: Text('OutlinedButton'),
              ),
              SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  print('Text Button Pressed');
                },
                child: Text('TextButton'),
              ),
              SizedBox(height: 20.0),
              FilledButton(
                onPressed: () {
                  print('Filled Button Pressed');
                },
                child: Text('FilledButton'),
              ),
              SizedBox(height: 20.0),
              BackButton(),
              SizedBox(height: 20.0),
              CloseButton(),
              SizedBox(height: 20.0),
              DropdownButton(
                value: DropDownButtonValue,
                items: [
                  DropdownMenuItem(child: Text('Option1'), value: "e1"),
                  DropdownMenuItem(child: Text('Option2'), value: "e2"),
                ],
                onChanged: (String? value) {
                  setState(() {
                    DropDownButtonValue = value;
                    print(DropDownButtonValue);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
