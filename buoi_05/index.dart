// import 'dart:developer';

// void main(List<String> args) {
//   People people = const People(name: 'Dart', age: 10, address: 'Ha Noi');
//   People people1 = const People(name: 'Dart', age: 10, address: 'Ha Noi');
//   log('people == people1: ${people == people1}');
//   People people2 = const People(
//     name: 'Dart',
//     age: 11,
//     address: 'Ha Noi',
//     cccdGanChip: CccdGanChip(
//       id: 1,
//       name: 'Trung',
//       // dateOfBirth: '10/10/1999',
//     ),
//   );
//   people.showInfo();

//   People people3 = People.ft8('Dart');
//   People people4 = People.nothing();

//   CccdGanChip cccdGanChip = const CccdGanChip(
//     id: 1,
//     name: 'Trung',
//     // dateOfBirth: '10/10/1999',
//   );

//   cccdGanChip.showInfo();
// }

// class People {
//   const People({
//     required this.name,
//     required this.age,
//     required this.address,
//     this.cccdGanChip,
//   });

//   factory People.ft8(String name) {
//     return People(
//       name: name,
//       age: 10,
//       address: 'Ha Noi',
//     );
//   }

//   factory People.nothing() {
//     return People(
//       name: 'name',
//       age: 10,
//       address: 'Ha Noi',
//     );
//   }

//   // like factory constructor
//   const People.onlyName(this.name)
//       : age = 10,
//         address = 'Ha Noi',
//         cccdGanChip = null;

//   final String name;
//   final int age;
//   final String address;
//   final CccdGanChip? cccdGanChip;

//   void showInfo() {
//     print('Name: $name, Age: $age, Address: $address');
//   }
// }

// class CccdGanChip {
//   const CccdGanChip({
//     required this.id,
//     required this.name,
//     this.dateOfBirth,
//   });

//   final int id;
//   final String name;
//   final String? dateOfBirth;

//   void showInfo() {
//     print('ID: $id Name: $name, Date of birth $dateOfBirth');
//   }
// }

// void main(List<String> args) {
//   SinhVien sv = SinhVien();
//   sv.setAge = 10;
//   print("sv age is ${sv.getAge}");
// }

class SinhVien {
  int _age = 10;
  int get getAge => _age; // => hàm getter
  set setAge(int age) {
    if (age < 0) {
      throw ArgumentError('age must be greater than 0');
    }
    // => hàm setter
    // xử lý logic ở đây
    _age = age;
  }
}

class Person {
  // class
  final String name; // 1 properties trong class
  final int age;
  const Person({required this.name, required this.age});

  void showInfo() {
    print('Name: $name, Age: $age');
  }
}

class Mercenary extends Person {
  // kế thừa
  final Gun gun; // class chứa 1 đối tượng khác

  // hàm khởi tạo Mercenary với 3 tham số bắt buộc
  const Mercenary({
    required super.name,
    required super.age,
    required this.gun,
  });

  void shot() {
    print('Shot');
  }

  @override
  void showInfo() {
    // super.showInfo();
    print('Gun: $gun');
  }
}

class Gun {}

void main(List<String> args) {
  const Person(name: 'Dart', age: 10).showInfo();

  Mercenary mercenary = Mercenary(
    name: 'Dart',
    age: 10,
    gun: Gun(),
  );
  mercenary
    ..showInfo()
    ..shot();
}
