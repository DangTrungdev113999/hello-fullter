class Manufacturer {
  final String id;
  final String name;

  const Manufacturer({required this.id, required this.name});
}

class Device {
  final String id;
  final String name;
  final String system;
  final Manufacturer manufacturer;

  Device({
    required this.id,
    required this.name,
    required this.system,
    required this.manufacturer,
  });
}

void main(List<String> args) {
  Manufacturer apple = Manufacturer(id: '1', name: 'Apple');
  Device iphone =
      Device(id: '1', name: 'Iphone 12', system: 'IOS', manufacturer: apple);
  print(iphone.manufacturer.name);
}
