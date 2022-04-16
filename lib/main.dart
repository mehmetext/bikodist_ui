import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'models/person.dart';
import 'views/button1_view.dart';
import 'views/hive_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(PersonAdapter());
  await Hive.openBox('settings');
  await Hive.openBox('friends');
  await Hive.openBox<Person>('people');
  runApp(BiKodistUI());
}

class BiKodistUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bi Kodist UI',
      themeMode: ThemeMode.dark,
      darkTheme: Hive.box('settings').get('darkMode')
          ? ThemeData.dark()
          : ThemeData.light(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bi Kodist UI'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          ElevatedButton(
            onPressed: () {
              Get.to(() => Button1View());
            },
            child: Text('Buton #1'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => HiveView());
            },
            child: Text('Hive Denemeleri'),
          ),
        ],
      ),
    );
  }
}
