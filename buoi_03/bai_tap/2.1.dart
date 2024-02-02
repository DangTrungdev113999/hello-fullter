void main(List<String> args) {
  /*Ví dụ dưới đây có 3 lỗi. Hãy tìm và sửa hết 3 lỗi này. Nhớ đọc ví dụ về ... nhé mọi người.*/
  List<String?> arrs = ["-1", "1", "2", null, "3", "4", "5", "6", "7"];
  Map<dynamic, List<String?>?>? sMap = {
    1: null,
    2: [],
    3: ["x", "y", "z"]
  };
  Map<dynamic, List<dynamic>?>? map = {
    "first": ["a", "b", "c", "d"]
  };
  map.addAll(sMap);

  // Error 1: check null
  List<int> arrsToInt = arrs.map((e) => int.parse(e ?? '0')).toList();

  map["second"] = arrsToInt;

  // Error 2: check null
  map["third"] = sMap.values.last?.sublist(1);
  /*Ví dụ về ...
  Cách sử dụng: [...Iterable]
  Khi sử dụng ... sẽ lấy toàn bộ phần tử của Iterable add vào trong []
  ví dụ: 
  var a = [1,2,3];
  var b = [4,5,6];
  var result = [...a, ...b] // sẽ cho ra result = [1,2,3,4,5,6]*/
  map["fourth"] = [
    ...arrs.map((e) => int.parse(e ?? '0')).where((e) => e % 2 == 1),
    ...arrs.where((e) => e == null),
    // Error 3: check null
    ...(sMap[3] ?? []).sublist(0, 2)
  ];

  print(map);
}
