import 'student.dart';

abstract class Class {
  late final String className;
  late final int requireNumberOfStudent;
  final List<Student> currentStudents = [];

  Class({
    required this.className,
    required this.requireNumberOfStudent,
  });

  int getNumberOfStudent() {
    return currentStudents.length;
  }

  int remainMembers() {
    return requireNumberOfStudent - currentStudents.length;
  }

  void getInfoStudent() {
    print(
        '\nClass $className has ${currentStudents.length} students: ${currentStudents.map((e) => e.name).toList().join(',')} ');
  }

  void addStudent({
    List<Student>? listStudent,
    Student? student,
  }) {
    if (student is Student) {
      if (currentStudents.length <= requireNumberOfStudent) {
        currentStudents.add(student);
        student.joinClass(this);
        print('Add student ${student.name} to class $className');
      } else {
        print('Class $className is full');
      }
    }

    if (listStudent is List<Student>) {
      for (Student student in listStudent) {
        if (currentStudents.length <= requireNumberOfStudent) {
          currentStudents.add(student);
          student.joinClass(this);
          print('Add student ${student.name} to class $className');
        } else {
          print('Class $className is full');
        }
      }
    }
  }

  void autoGenerateStudent() {
    for (int i = 0; i < requireNumberOfStudent; i++) {
      currentStudents.add(Student(name: 'Student $i'));
    }
  }
}
