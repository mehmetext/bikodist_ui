import 'package:hive/hive.dart';

part 'person.g.dart';

@HiveType(typeId: 0)
class Person {
  @HiveField(0)
  late String name;

  @HiveField(1)
  late int age;

  @HiveField(2)
  late List<Person> friends;

  @HiveField(3)
  late bool isMan;

  Person(this.name, this.age, this.isMan, {this.friends = const []});
}
