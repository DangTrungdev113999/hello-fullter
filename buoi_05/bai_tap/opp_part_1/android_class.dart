import 'class.dart';
import 'mixin_feature.dart';

class AndroidClass extends Class with BuildIOS {
  AndroidClass({
    required super.className,
    required super.requireNumberOfStudent,
  });
}
