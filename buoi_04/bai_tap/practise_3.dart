class Request2 {
  static int staticField = 10;

  static void staticMethod() {
    print("Static method");
  }
}

void main(List<String> args) {
  //🔥 1.Khai báo toàn bộ các kiểu dữ liệu: Non-Nullable Types và Nullable Types, dynamic, var.
  int? nullableInt = null;
  double? nullableDouble = null;
  String? nullableString = null;
  bool? nullableBool = null;
  //🔥 2.Có sử dụng các từ khoá static, final, late const.

  // 📝 static: Sử dụng static để tạo ra các fields hoặc methods của một lớp mà không cần tạo ra một phiên bản của lớp đó.
  print(Request2.staticField);
  Request2.staticMethod();
  //📝 final: Sử dụng final để khai báo một biến hoặc hằng số mà giá trị của nó không thể thay đổi sau khi đã được gán một lần.
  final int finalVar = 10;
  final double PI = 3.14;

  // 📝const: Sử dụng const để khai báo một biến hoặc hằng số mà giá trị của nó không thay đổi sau khi biên dịch và được biết tại thời điểm biên dịch.
  const int constVar = 10;
  const double E = 2.71828;

  //📝 late: Sử dụng late để khai báo một biến mà giá trị của nó sẽ được gán sau khi khai báo, nhưng trước khi được sử dụng.
  late int lateVar;
  lateVar = 10;

  //📝 không thể sử dụng static cùng với final hoặc const khi khai báo một biến cục bộ trong một phương thức.

//🔥 3.Viết 1 hàm tính giai thừa của 6.
  //📝 https: //imo2007.edu.vn/kien-thuc/cong-thuc-giai-thua/
  int factorial(int n) {
    if (n == 0) {
      return 1;
    }
    return n * factorial(n - 1);
  }

  print(factorial(6));
//🔥 4.Viết các hàm chuyển đổi qua lại giữa string, int, double.
  String intToString(int number) {
    return number.toString();
  }

  int stringToInt(String number) {
    return int.parse(number);
  }

  double stringToDouble(String number) {
    return double.parse(number);
  }

  String doubleToString(double number) {
    return number.toString();
  }

  int doubleToInt(double number) {
    return number.toInt();
  }

  double intToDouble(int number) {
    return number.toDouble();
  }

  print(intToString(10));
  print(stringToInt('10'));
  print(stringToDouble('10.5'));
  print(doubleToString(10.5));
  print(doubleToInt(10.5));
  print(intToDouble(10));
}
