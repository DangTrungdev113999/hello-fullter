void main(List<String> args) {
  String? s = "hello world";
  String s1 = 'hello world';
  String s2 = "'hello world'";

  List<String> ss2 = s2.split(" ");
  bool ss3 = s2.contains("hello");
  String ss4 = s2.toUpperCase();
  int ss5 = s2.indexOf('o');
  bool ss6 = s2.startsWith('h');
  String ssss7 = s2.replaceAll('o', 'a');
  // print("ssss7 -> ${ss6 ? 'hehe' : 'haha'} \n blabla");

  int myAge = 24;
  String parseMyAgeToString = myAge.toString();
  double myWeight = 59.2;
  int parseMyWeightToInt = myWeight.toInt();
  BigInt bigNumber = BigInt.from(1e20);
  String smallNumber = '1e-6';
  var tryParseSmallNumber = double.tryParse(smallNumber);

  // if use parse will throw error in system
  int? stringTryParse = int.tryParse('1999trung');

  List<String> listString = ['hello', 'world', 'flutter'];
  List<String> listString2 = List<String>.from(listString)..add('teckmaster');
  List<String> listString3 = List<String>.from(listString2)..remove(0);
  List<String> listString4 = List<String>.from(listString2).sublist(1, 3);
  List listNumber = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List parseListNumberToString = listNumber.map((e) => e.toString()).toList();
  List whereListNumber =
      listNumber.where((e) => e % 2 == 0).toList(); //firstWhere , indexWhere
  List insertListNumber = listNumber..insert(0, 'element');
  List takeListNumber = listNumber.take(3).toList();

  List<String> listString1AddListString2 = listString..addAll(listString2);
  List<String> uniqList = listString1AddListString2.toSet().toList();
  var uniqListInterble = listString1AddListString2.toSet();

  Map<dynamic, dynamic> myInfo = {
    'name': 'Trung',
    'age': 24,
    'weight': 59.2,
    'isMale': true,
  };

  Map mySkill = {
    'skill': ['flutter', 'dart'],
    'level': 0,
  };

  Map moreInfo = Map.from(mySkill)
    ..['experience'] = '1 year'
    ..['numberOfProject'] = 3;

  print('myAge :'
      '$myAge \n'
      'type of my Age :'
      '${myAge.runtimeType} \n'
      //
      'parseMyAgeToString :'
      '${parseMyAgeToString} \n'
      //
      'type of  parseMyAgeToString :'
      '${parseMyAgeToString.runtimeType} \n'
      //
      'check type parseMyAgeToString is tring :'
      '${parseMyAgeToString is String} \n'
      //
      'check type myWeight is double :'
      '${parseMyAgeToString is double}'
      //
      'parseMyWeightToInt : '
      '${parseMyWeightToInt} \n'
      //
      'listString : '
      '${listString} \n'
      //
      'listString2  : '
      '$listString2 \n'
      //
      'listString3 : '
      '$listString3 \n'
      //
      'listString4 : '
      '$listString4 \n'
      //
      'listString1AddListString2 : '
      '$listString1AddListString2 \n'
      //
      'uniqList : '
      '$uniqList \n'
      //
      'uniqListInterble : '
      '$uniqListInterble \n'
      //
      'list.amp : '
      '$parseListNumberToString \n'
      //
      'list.insertListNumber : '
      '$insertListNumber \n'
      //
      'list.where : '
      '$whereListNumber \n'
      //
      'list.takeListNumber : '
      '$takeListNumber \n'
      //
      'bigNumber : '
      '$bigNumber \n'
      //
      'tryParseSmallNumber : '
      '$tryParseSmallNumber \n'
      //
      'stringTryParse : '
      '$stringTryParse \n'
      //
      'myInfo : '
      '$myInfo \n'
      //
      'myInfo.keys.first : '
      '${myInfo.keys.first} \n'
      //
      'myInfo.values.first : '
      '${myInfo.values.first} \n'
      //
      'addAll in map : '
      '${myInfo..addAll(mySkill)} \n'
      //
      '... in map : '
      '${{...myInfo, ...mySkill}} \n'
      //
      'moreInfo : '
      '$moreInfo \n'
      //

      );
}
