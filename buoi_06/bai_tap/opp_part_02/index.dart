import 'android_class.dart';
import 'flutter_class.dart';
import 'ios_class.dart';
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

  flutterO9.setNumberOfSessions = 15;

  flutterO9.autoUpdateSectionOfClasses(
    classFlutter: flutterO9,
    androidClass: androidO9,
    iosClass: iosO9,
    webClass: webO9,
  );

  print('Flutter 09: ${flutterO9.getNumberOfSessions} sessions');
  print('Flutter 09: ${androidO9.getNumberOfSessions} sessions');
  print('Flutter 09: ${iosO9.getNumberOfSessions} sessions');
  print('Flutter 09: ${webO9.getNumberOfSessions} sessions');
}
