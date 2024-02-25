void main(List<String> args) {
  Person person = Person(name: "David");
  person.run();
}

class Person with ActionSwim, ActionRun {
  final String name;
  Person({required this.name});
}

class Artist with ActionSwim {
  void test() {
    super.run();
  }
}

mixin ActionSwim implements HumanAction {
  void run() {
    print("swim");
  }
}

mixin ActionRun implements HumanAction {
  @override
  void swim() {
    print("swim");
  }
}

abstract class HumanAction {
  void run();
}
