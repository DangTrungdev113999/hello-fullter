import 'class.dart';
import 'mixin_feature.dart';

class IosClass extends Class with BuildIOS {
  IosClass({
    required super.className,
    required super.requireNumberOfStudent,
  });
}
