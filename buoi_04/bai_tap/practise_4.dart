extension NumberExtxnxx on num {
  num add(num numExt) {
    if (numExt <= 0) {
      throw ArgumentError('numExt must be greater than 0');
    }
    return this + numExt;
  }

  num subtract(num numExt) {
    if (numExt <= 0) {
      throw ArgumentError('numExt must be greater than 0');
    }
    return this - numExt;
  }

  num divide(num numExt) {
    if (numExt <= 0) {
      throw ArgumentError('numExt must be greater than 0');
    }
    return this / numExt;
  }

  num multiple(num numExt) {
    if (numExt <= 0) {
      throw ArgumentError('numExt must be greater than 0');
    }
    return this * numExt;
  }
}

void main(List<String> args) {
//  Mở rộng thêm các phương thức từ number:
// Thêm các phương thức add(), subtract, divide, multiple tương ứng với 4 phép tính: cộng, trừ, nhân, chia
// 4 phương thức này đều báo lỗi nếu truyền vào số <= 0

  num number1 = 10;
  num number2 = 5;
  print(number1.add(number2));
  print(number1.subtract(number2));
  print(number1.divide(number2));
  print(number1.multiple(number2));
}
