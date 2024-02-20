enum EnvironmentOfAnimal {
  Land("Động vật trên cạn", 'Land'),
  Water('Động vật dưới nước', 'Water'),
  Air('Động vật bay', 'Air'),
  Amphibious('Động vật lưỡng cư', 'Amphibious');

  const EnvironmentOfAnimal(this.vietnames, this.english);

  final String vietnames;
  final String english;
}

abstract class Animal {
  late String? animalName;
  late final EnvironmentOfAnimal environmentOfAnimal;
  void getInformation() {}

  void eat() {}

  void action();
  void impossibleAction();
}
