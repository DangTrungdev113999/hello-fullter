double bai1(List<int> inputs) {
  double sum = 0;
  for (int i = 0; i < inputs.length; i++) {
    sum += inputs[i];
  }
  return sum / inputs.length;
}

void bai2(List<int> inputs) {
  int max = 0;
  int min = 0;
  for (int i = 0; i < inputs.length; i++) {
    if (inputs[i] > max) {
      max = inputs[i];
    }

    if (inputs[i] < min) {
      min = inputs[i];
    }
  }
  print('GTLN: $max, GTNN: $min');
}

void bai3(List<int> inputs) {
  Map<int, int> mapToCheck = {};
  for (int i = 0; i < inputs.length; i++) {
    if (mapToCheck.containsKey(inputs[i])) {
      mapToCheck[inputs[i]] = mapToCheck[inputs[i]]! + 1;
    } else {
      mapToCheck[inputs[i]] = 1;
    }
  }

  Map<int, String> result =
      mapToCheck.map((key, value) => MapEntry(key, '$key: $value lần'));
  print(result.values.toList().join(', '));
}

void main(List<String> args) {
//🔥 Cho 1 mảng gồm n phần tử, viết hàm tính giá trị trung bình của mảng đó
// VD: List<int> inputs = [1,2,3,4,5,6,7,8,9,10], giá trị trung bình = 55 / 10.
  List<int> inputs = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(bai1(inputs));

//🔥 Cho 1 mảng gồm n phần tử, viết hàm tìm giá trị lớn nhất, giá trị nhỏ nhất của mảng đó.
// VD: List<int> inputs = [10,7,8,9,4,6,2,3,1,5], GTNN: 1,  GTLN: 10
  List<int> inputs2 = [10, 7, 8, 9, 4, 6, 2, 3, 1, 5];
  bai2(inputs2);

//🔥 Cho 1 mảng gồm n phần tử với các phần tử bị trùng, viết hàm tìm ra từng giá trị với từng lần xuất hiện của giá trị.
// VD: List<int> inputs = [1,2,3,4,5,6,1,1,2], kết quả mong muốn:
//    - 1: 3 lần, 2: 2 lần, 3: 1 lần….

  List<int> inputs3 = [1, 2, 3, 4, 5, 6, 1, 1, 2];
  bai3(inputs3);

//🔥 Cho 1 mảng gồm n phần tử, viết hàm đếm số lượng số chẵn, số lẻ
// VD: List<int> inputs = [0,1,2,3,4,5,6], Số chẵn: 4 số, Số lẻ: 3
  List<int> inputs4 = [0, 1, 2, 3, 4, 5, 6];
  int countEven = 0;
  int countOdd = 0;
  for (int i = 0; i < inputs4.length; i++) {
    if (inputs4[i] % 2 == 0) {
      countEven++;
    } else {
      countOdd++;
    }
  }
  print('Số chẵn: $countEven số, Số lẻ: $countOdd số');
}
