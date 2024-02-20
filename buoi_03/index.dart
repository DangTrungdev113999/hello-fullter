import 'dart:developer';

enum DayOfWeeks {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday,
}

enum DayOfWeeksPro {
  Monday('Thứ 2'),
  Tuesday('Thứ 3'),
  Wednesday('Thứ 4'),
  Thursday('Thứ 5'),
  Friday('Thứ 6'),
  Saturday('Thứ 7'),
  Sunday('Chủ nhật');

  const DayOfWeeksPro(this.vietnames);

  final String vietnames;
}

extension DayOfWeeksExt on DayOfWeeks {
  String getName() {
    switch (this) {
      case DayOfWeeks.Monday:
        return "Thứ 2";
      case DayOfWeeks.Tuesday:
        return "Thứ 3";
      case DayOfWeeks.Wednesday:
        return "Thứ 4";
      case DayOfWeeks.Thursday:
        return "Thứ 5";
      case DayOfWeeks.Friday:
        return "Thứ 6";
      case DayOfWeeks.Saturday:
        return "Thứ 7";
      case DayOfWeeks.Sunday:
        return "Chủ nhật";
      default:
        return "Không xác định";
    }
  }
}

// private function
void _function1({String? name, int? age, String? address}) {
  print('Hello $name, $age, $address');
}

void _function2(bool isLoading, String cty, String district,
    {String? name, int? age, String? address}) {
  print(
      'Hello $name, $age, $address $cty ${district} ${isLoading ? 'true' : 'false'}');
}

// public function
void function2(String name, [int? age, String? address]) {
  print('Hello $name, $age, $address');
}

void main(List<String> args) {
  String? s = "hello world";
  var a = null ?? 'x'; // just null before
  // ?. !.
  print(a);

  String? s2 = null;
  List<String> ss2 = s2?.split(" ") ?? [];

  String? sCanBeNull = null;
  List<String> splitteds_3 = sCanBeNull?.split("") ?? [];

  /// ở đây, sẽ thực thi như sau:
  /// Nếu `sCanBeNull` != null sẽ gọi hàm split("") và trả về giá trị
  /// Nếu `sCanBeNull` == null sẽ trả về giá trị []

  /// 1 vài ví dụ về `Null-aware`
  sCanBeNull ??= "Value"; // nếu sCanBeNull = null, sCanBeNull = "Value"
  // sCanBeNull ??=
  //     "Test"; // sCanBeNull sẽ không được cập nhật, vì giá trị hiện tại = "Value"
  // print("sCanBeNull -> $sCanBeNull");

  List<String?>? list = ['', null];

  _function1(name: 'Trung', age: 24, address: 'HCM');
  _function1(name: 'Trung');
  _function2(
    name: 'Trung',
    true,
    'attlas',
    age: 24,
    address: 'Ha Noi',
    'Tran cung',
  );

  void functionToCallFunctionPrint(
      void Function({String param1, int params2}) functionPrintCallback) {
    functionPrintCallback(param1: 'flutter', params2: 2);
  }

  void functionPrint({String param1 = 'hello', int params2 = 1}) {
    print('Hello $param1, $params2');
  }

  functionToCallFunctionPrint(functionPrint);

  // void functionToCallFunctionPrint(
  //     void Function({required String param1, required int params2})
  //         functionPrintCallback) {
  //   functionPrintCallback(param1: 'flutter', params2: 2);
  // }

  // void functionPrint({required String param1, required int params2}) {
  //   print('Hello $param1, $params2');
  // }

  // functionToCallFunctionPrint(functionPrint);

  const String name = 'Trung';
  final String name1 = 'Trung';
  // Giống: đều k thể gán lại giá trị, chỉ nhận giá trị duy nhất, phải gắn giá trị
  // khác:  const khởi tạo trc chương trình, final khởi tạo khi chạy chương trình
  // const Dùng cho widget k cần render
  // final Dùng cho widget cần render ,

  late String name2; // khai báo giá trị sau
  late final String name3; // khai báo giá trị sau
  // status  : dùng trong class nhiều, để k phải khởi tạo instance, có thể truy cập trự tiếp bằng class
  name2 = 'Trung';

  print(name2);

  List<DayOfWeeks> dayOfWeeks = DayOfWeeks.values;
  List<DayOfWeeksPro> dayOfWeeksPro = DayOfWeeksPro.values;

  print('enum ${DayOfWeeks.Friday.index}');

  dayOfWeeks.forEach((element) {
    print("day is: ${element.getName()}");
    // sẽ in ra: các ngày từ thứ 2 -> chủ nhật
    // day is: Thứ 2
    // day is: Thứ 3
    // day is: Thứ 4
    // day is: Thứ 5
    // day is: Thứ 6
    // day is: Thứ 7
    // day is: Chủ nhật
  });

  for (var element in dayOfWeeksPro) {
    log("VN ---- : ${element.vietnames}");
  }
}

// _function1({name: 'Trung', age: 24, address: 'HCM'});

// exercuse _function1
