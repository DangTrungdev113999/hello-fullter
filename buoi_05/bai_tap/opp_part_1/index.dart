import 'android_class.dart';
import 'class.dart';
import 'flutter_class.dart';
import 'ios_class.dart';
import 'student.dart';
import 'web_class.dart';

void main(List<String> args) {
  ClassFlutter flutterO9 = ClassFlutter(
    className: 'Flutter 09',
    requireNumberOfStudent: 11,
  );
  AndroidClass androidO9 = AndroidClass(
    className: 'Android 09',
    requireNumberOfStudent: 15,
  );
  IosClass iosO9 = IosClass(
    className: 'Ios 09',
    requireNumberOfStudent: 13,
  );
  WebClass webO9 = WebClass(
    className: 'Web 09',
    requireNumberOfStudent: 17,
  );
  Student<Class> A = Student(name: 'A');
  Student<Class> B = Student(name: 'B');
  Student<Class> C = Student(name: 'C');
  Student<Class> D = Student(name: 'D');
  Student<Class> E = Student(name: 'E');
  Student<Class> F = Student(name: 'F');

  flutterO9.addStudent(
    listStudent: [A, B],
  );

  androidO9.addStudent(
    listStudent: [B, C, D],
  );

  iosO9.addStudent(
    listStudent: [D, E, F],
  );

  webO9.addStudent(
    student: F,
  );

  flutterO9.getInfoStudent();

  print(
      '\n Class ${flutterO9.className} miss ${flutterO9.remainMembers()} students');

  flutterO9.autoGenerateStudent();

  flutterO9.getInfoStudent();

  print(
      '\n Class ${flutterO9.className} miss ${flutterO9.remainMembers()} students');

  // Khởi tạo, thêm toàn bộ các học viên còn thiếu của mỗi lớp sao cho trong 1 lớp không có thành viên nào bị trùng tên
}
