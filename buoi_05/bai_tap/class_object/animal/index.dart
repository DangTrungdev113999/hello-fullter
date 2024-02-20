import 'animal.dart';
import 'animal_in_land.dart';
import 'animal_on_water.dart';

class Dog extends AnimalInLand {
  late String typeDog;

  Dog({super.animalName, required this.typeDog});

  @override
  void getInformation() {
    super.getInformation();
    print('Type dog: ${this.typeDog}\n');
  }

  @override
  void eat() {
    super.eat();
    print('dog food: bone ...\n');
  }

  @override
  void action() {
    super.action();
    print('action of $animalName: waving, herding sheep, ... \n');
  }

  @override
  void impossibleAction() {
    super.impossibleAction();
    print('so ${animalName} wish to fly\n');
  }
}

class Fish extends AnimalOWater {
  final String name;

  Fish({required super.animalName, required this.name});

  @override
  void getInformation() {
    super.getInformation();
    print('This is a Fish, Its name is ${this.name}\n');
  }

  @override
  void eat() {
    super.eat();
    print('Fish food: ...\n');
  }

  @override
  void action() {
    super.action();
    print('action of $animalName: waving, herding sheep, ... \n');
  }

  @override
  void impossibleAction() {
    super.impossibleAction();
    print('so ${animalName} wish to walk\n');
  }
}

void main(List<String> args) {
  // AnimalInLand animalInLand = AnimalInLand(
  //   animalName: 'xxxx',
  // );

  // animalInLand.getInformation();

  Dog superDog = Dog(
    animalName: 'Dog',
    typeDog: 'Husky',
  );

  superDog.getInformation();
  superDog.eat();
  superDog.action();
  superDog.impossibleAction();

  print('-------------------');

  Fish nemo = Fish(animalName: 'Fish', name: 'Nemo');

  nemo.getInformation();
  nemo.eat();
  nemo.action();
  nemo.impossibleAction();
}
