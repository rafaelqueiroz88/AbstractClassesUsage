import 'package:meta/meta.dart';

abstract class Person {
  late final String name;
  late final String _lastname;
  late final int age;
  late final String gender;

  Person({
    required String personName,
    required String personLastname,
    int? personAge,
    String? personGender,
  }) {
    name = personName;
    _lastname = personLastname;
    age = personAge ?? 0;
    gender = personGender ?? 'n/a';
  }

  String sayYourName() {
    return name;
  }

  String sayYourLastname() {
    return _lastname;
  }

  @protected
  dynamic yourAge() {
    if (gender == 'female') {
      return 'It\'s a secret';
    } else {
      return 'I\'m $age years old';
    }
  }
}
