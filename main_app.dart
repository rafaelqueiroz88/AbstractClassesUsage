import './person.dart';

void main() {
  final Student student = Student(
    personName: 'Peter',
    personLastname: 'Parker',
    personAge: 17,
    personGender: 'male',
    activitiesScore: 7,
    examScore: 9,
  );

  // call over student values
  // call to a public property *expecting Peter
  print(student.name);
  // call to a public method *expecting Peter
  print(student.sayYourName());
  // call to a private property (impossible so it must be commented to run) *expecting raises an error
  // print(student.lastname);
  // call to a public method to bring a private property (possible) *expecting Parker
  print(student.sayYourLastname());
  // call over a function that only exists for students
  print(student.average());
  // call over a function that only exists for teachers over a student *expecting raises an error
  // print(student.whatIsYourSubject());

  final Teacher teacher = Teacher(
    personName: 'Tony',
    personLastname: 'Stark',
    personAge: 40,
    personGender: 'male',
    subject: 'Math',
  );

  // call over a function that only exists for teachers over a student *expecting raises an error
  print(teacher.whatIsYourSubject());

  final Teacher anotherTeacher = Teacher(
    personName: 'Black',
    personLastname: 'Widow',
    personAge: 30,
    personGender: 'female',
    subject: 'Math',
  );

  // call over a function that only exists for teachers over a student *expecting raises an error
  print(teacher.whatIsYourSubject());
  // call over a protected function * expecting raises an error because
  // a protected method if available only inside a parent class
  // print(anotherTeacher.yourAge());
  // call over a public method that consumes a protected parent method *expecting to return the age
  print(anotherTeacher.askAgeAgain());
}

class Student extends Person {
  // properties that only exists for students
  final int? examScore;
  final int? activitiesScore;

  Student({
    required String personName,
    required String personLastname,
    int? personAge,
    String? personGender,
    this.examScore,
    this.activitiesScore,
  }) : super(
          personName: personName,
          personLastname: personLastname,
          personAge: personAge,
          personGender: personGender,
        );

  int average() {
    if (examScore != null && activitiesScore != null) {
      return ((examScore! + activitiesScore!) / 2).floor();
    } else if (examScore != null && activitiesScore == null) {
      return (examScore! / 2).floor();
    } else if (examScore == null && activitiesScore != null) {
      return (activitiesScore! / 2).floor();
    }

    return 0;
  }
}

class Teacher extends Person {
  late final String subject;

  Teacher({
    required String personName,
    required String personLastname,
    int? personAge,
    String? personGender,
    required this.subject,
  }) : super(
          personName: personName,
          personLastname: personLastname,
          personAge: personAge,
          personGender: personGender,
        );

  String whatIsYourSubject() {
    return subject;
  }

  String askAgeAgain() {
    return yourAge();
  }
}
