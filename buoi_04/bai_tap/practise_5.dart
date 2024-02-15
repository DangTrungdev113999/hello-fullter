void myFunction(List<int> numbers) {
  List<int> oddNumbers = [];

  List<int> evenNumbers = [];

  for (int number in numbers) {
    if (number == 0 && number % 2 == 0) {
      print('0 is even');
    } else if (number == 0 && number % 2 != 0) {
      print('0 is odd');
    }
    if (number % 2 == 0) {
      evenNumbers.add(number);
    } else {
      oddNumbers.add(number);
    }
  }

  print('Odd numbers: $oddNumbers');

  print('Even numbers: $evenNumbers');
}

void main(List<String> args) {
  // Viết 1 chương trình:
  // Đầu vào là 1 mảng số tự nhiên từ 0 -> 100
  // Liệt kê ra toàn bộ các số lẻ
  // Liệt kê ra toàn bộ số chẵn
  // Kiểm tra xem 0 là số chẵn hay số lẻ

  List<int> numbers = List.generate(101, (index) => index);

  myFunction(numbers);
}
