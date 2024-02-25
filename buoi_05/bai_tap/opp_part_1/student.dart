import 'class.dart';

class Student<T extends Class> {
  final String name;
  final List<T> classes = [];

  Student({required this.name});

  void joinClass(T newClass) {
    classes.add(newClass);
  }
}
