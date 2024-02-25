abstract class Animal {
  String get age;
}

class Action {
  String get name => 'xnxx';
}

class ActionGo extends Action {
  @override
  String get name => 'Go';
}

class ActionSwim extends Action {
  @override
  String get name => 'Swim';
}

class Person<T extends Action> {
  late T? action;

  void setAction(T action) {
    this.action = action;
  }
}

void main(List<String> args) {
  Action swim = ActionGo();
  print('${swim.name}');

  Person<ActionSwim> person = Person();
  person.setAction(ActionSwim());
  print('${person.action?.name}');
}
