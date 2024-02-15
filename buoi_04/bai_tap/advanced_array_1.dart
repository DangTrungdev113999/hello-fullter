void main(List<String> args) {
// Cho 1 mảng gồm n phần tử, viết hàm tìm 3 giá trị lớn nhất, 3 giá trị nhỏ nhất của mảng đó.
// VD: List<int> inputs = [10,7,8,9,4,6,2,3,1,5]:
// GTNN top 1: 1, GTNN top 2: 2, GTNN  top 3: 3.
// GTLN top 1: 10, GTLN top 2: 9, GTLN top 3: 8.

  List<int> inputs = [10, 7, 8, 9, 4, 6, 2, 3, 1, 5];

  void bai1(List<int> inputs) {
    inputs.sort();
    print(
        'GTNN top 1: ${inputs[0]}, GTNN top 2: ${inputs[1]}, GTNN top 3: ${inputs[2]}');
    print(
        'GTLN top 1: ${inputs[inputs.length - 1]}, GTLN top 2: ${inputs[inputs.length - 2]}, GTLN top 3: ${inputs[inputs.length - 3]}');
  }

  bai1(inputs);
}
