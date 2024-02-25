import 'class.dart';
import 'mixin_feature.dart';

class ClassFlutter extends Class
    with BuildAndroid, BuildIOS, BuildWeb, BuildDesktopWeb {
  ClassFlutter({
    required super.className,
    required super.requireNumberOfStudent,
  });
}
