import 'android_class.dart';
import 'flutter_class.dart';
import 'ios_class.dart';
import 'web_class.dart';

mixin BuildAndroid {
  void buildAndroid() {
    print('Building Android');
  }
}

mixin BuildIOS {
  void buildIOS() {
    print('Building IOS');
  }
}

mixin BuildWeb {
  void buildWeb() {
    print('Building Web');
  }
}

mixin BuildDesktopWeb {
  void buildDesktopWeb() {
    print('Building Desktop Web');
  }
}

mixin HandleStudentOfClass {
  int remainMembers(int currentStd, int requiredStd) {
    return requiredStd - currentStd;
  }
}

mixin HandleNumberOfSection {
  void autoUpdateSectionOfClasses({
    ClassFlutter? classFlutter,
    AndroidClass? androidClass,
    IosClass? iosClass,
    WebClass? webClass,
  }) {
    if (classFlutter != null) {
      var sessionsOfFlutter = classFlutter.getNumberOfSessions;

      if (androidClass != null && sessionsOfFlutter > 10) {
        androidClass.setNumberOfSessions = sessionsOfFlutter + 5;

        if (iosClass != null && sessionsOfFlutter > 10) {
          var sessionsOfAndorid = androidClass.getNumberOfSessions;
          iosClass.setNumberOfSessions = sessionsOfAndorid + 3;
        }
      }

      if (webClass != null && sessionsOfFlutter - 2 > 10) {
        webClass.setNumberOfSessions = sessionsOfFlutter - 2;
      }
    }
    if (androidClass != null) {
      // ...
    }
    if (iosClass != null) {
      // ...
    }
    if (webClass != null) {
      // ...
    }
  }
}
