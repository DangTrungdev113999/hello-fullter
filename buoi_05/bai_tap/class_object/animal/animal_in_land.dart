import 'animal.dart';

class AnimalInLand implements Animal {
  @override
  late final String? animalName;
  @override
  EnvironmentOfAnimal environmentOfAnimal = EnvironmentOfAnimal.Land;

  AnimalInLand({this.animalName});

  @override
  void getInformation() {
    // ❔có cách nào cho đoạn print này xuống dòng được k thầy  ❔
    // ❔có cách nào viết print trong getInformation của Animal và gọi ở đây k thầy  ❔

    print(
        'Environment of ${animalName == null ? 'noname' : animalName} : ${environmentOfAnimal.english} (${environmentOfAnimal.vietnames})');
  }

  @override
  void eat() {
    print(
        '${environmentOfAnimal.english} animal food: meat, fish, vegetable, fruit, rice, ...');
  }

  @override
  void action() {
    print('${environmentOfAnimal.english} eat the food chain below');
  }

  @override
  void impossibleAction() {
    print('${environmentOfAnimal.english} Can not fly');
  }
}
