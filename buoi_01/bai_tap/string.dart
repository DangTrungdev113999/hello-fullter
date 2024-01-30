void bai_01() {
  String str =
      " đây là kết quả của buổi học thứ 2 về dart: dart basics (phần 1)...";

  String parseStr = str
      .trim()
      .replaceAll(".", ' ')
      .replaceAll('đây', 'Đây')
      .replaceAll('dart', 'Dart')
      .replaceAll('dart basics', 'DART BASIC');

  print(parseStr);
}

void bai_02() {
  List arr = [
    1,
    2,
    3,
    "đây",
    "kết",
    "là",
    true,
    false,
    {true: "buổi", 1: "học", 10.2: ":", false: "dart basics"},
    ['thứ', 'quả', 'về'],
    "(phần 1)",
    {"flutter": "dart"},
  ];

  /// Lấy data từ array trên và tạo ra 1 String với giá trị sau:
  /// Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)

  // ví dụ
  String s1 =
      "${arr[3].replaceAll("đ", "Đ")} ${arr[5]} ${arr[4]} ${arr[9][1]} ${arr[8].values.first} ${arr[8][1]} ${arr[9][0]} ${arr[1]} ${arr[9][2]} ${arr[11]['flutter'].replaceAll("d", "D")} ${arr[8][10.2]} ${arr[8].values.last.toUpperCase()} ${arr[10]}";

  print('"$s1"'); // sẽ in ra "Đây" các ký tự sau tương tự như vậy.
}

void main() {
  bai_01();
  bai_02();
}
