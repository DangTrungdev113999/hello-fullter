class BB with HumanActionMixin {
  void test() {
    Developer developer = DeveloperImpl();
    developer.setOnHumanAction(this);
    developer.action?.run();
    developer.action?.swim();
  }
}

mixin HumanActionMixin implements HumanAction {
  @override
  void run() {
    print('HumanActionMixin run');
  }

  @override
  void swim() {
    print('HumanActionMixin swim');
  }
}

class AA implements HumanAction {
  void test() {
    Developer developer = DeveloperImpl();
    developer.setOnHumanAction(this);
    developer.action?.run();
    developer.action?.swim();
  }

  @override
  void run() {}

  @override
  void swim() {}
}

void main(List<String> args) {
  Developer developer = DeveloperImpl();
  developer.setOnHumanAction(HumanActionImpl());
  developer.action?.run();
  developer.action?.swim();
}

abstract class Developer {
  Developer();

  HumanAction? action;

  void setOnHumanAction(HumanAction action) {
    this.action = action;
  }
}

class DeveloperImpl extends Developer {
  DeveloperImpl();
}

abstract class HumanAction {
  void run();
  void swim();
}

class HumanActionImpl extends HumanAction {
  @override
  void run() {}

  @override
  void swim() {}
}
