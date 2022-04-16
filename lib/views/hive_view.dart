import 'package:bikodist_ui/models/person.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HiveView extends StatefulWidget {
  const HiveView({Key? key}) : super(key: key);

  @override
  _HiveViewState createState() => _HiveViewState();
}

class _HiveViewState extends State<HiveView> {
  Box peopleBox = Hive.box<Person>('people');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hive Denemeleri'),
        actions: [
          IconButton(
            onPressed: () {
              // Hive.box('settings').put('friends', ['ahmet', 'mehmet', 'veli']);
              // Hive.box('settings').put('lastTime', DateTime.now());
              // peopleBox.add(Person('mehmet', 10, true));
              print(peopleBox.get(0).age);
            },
            icon: Icon(Icons.ac_unit),
          ),
        ],
      ),
    );
  }
}
