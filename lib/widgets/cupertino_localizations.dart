import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoLocalizationsScreen extends StatelessWidget {
  const CupertinoLocalizationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoLocalizations Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("CupertinoLocalizations is an abstract class and cannot be directly instantiated. It provides localized strings for Cupertino widgets. Below are examples of how it's used indirectly through Cupertino widgets."),
              SizedBox(height: 20),
              Text("Cupertino Button with Default Localizations", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  CupertinoButton(
                    child: Text('Default Button'),
                    onPressed: () {},
                  ),
                  CupertinoButton.filled(
                    child: Text('Filled Button'),
                    onPressed: () {},
                  ),
                  CupertinoButton(
                    onPressed: null,
                    child: Text('Disabled Button'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Cupertino Picker with Default Localizations", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: CupertinoPicker(
                  itemExtent: 32,
                  onSelectedItemChanged: (int index) {},
                  children: List<Widget>.generate(5, (index) => Center(child: Text('Item $index'))),
                ),
              ),
              SizedBox(height: 20),
              Text("Cupertino Date Picker with Default Localizations", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: CupertinoDatePicker(
                  initialDateTime: DateTime.now(),
                  onDateTimeChanged: (DateTime newDateTime) {},
                  mode: CupertinoDatePickerMode.date,
                ),
              ),
              SizedBox(height: 20),
              Text("Cupertino Alert Dialog with Default Localizations", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              CupertinoButton(
                child: Text('Show Alert'),
                onPressed: () {
                  showCupertinoDialog(
                    context: context,
                    builder: (BuildContext context) => CupertinoAlertDialog(
                      title: Text('Alert Title'),
                      content: Text('This is an alert message.'),
                      actions: <Widget>[
                        CupertinoDialogAction(
                          child: Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              Text("Cupertino Context Menu with Default Localizations", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              CupertinoContextMenu(
                actions: <Widget>[
                  CupertinoContextMenuAction(
                    child: const Text('Action 1'),
                    onPressed: () {
                    },
                  ),
                  CupertinoContextMenuAction(
                    child: const Text('Action 2'),
                    onPressed: () {
                    },
                  ),
                ],
                child: Container(
                  color: Colors.grey[200],
                  padding: EdgeInsets.all(16),
                  child: Text("Long Press for Context Menu"),
                ),
              ),
              SizedBox(height: 20),
              Text("Cupertino Slider with Default Localizations", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              CupertinoSlider(
                value: 0.5,
                onChanged: (double value) {},
              ),
              SizedBox(height: 20),
              Text("Cupertino Switch with Default Localizations", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              CupertinoSwitch(
                value: true,
                onChanged: (bool value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
