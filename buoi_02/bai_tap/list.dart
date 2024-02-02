void main() {
  final phones = <String>[
    'Nokia',
    'Xiaomi',
    'iPhone',
  ];

  String theFirstElm = 'Xiaomi';
  String theSecondElm = 'iPhone';

  print(phones);
  print(
      '${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');

  int indexOfTheFistElm = phones.indexOf(theFirstElm);
  int indexOfTheSecondElm = phones.indexOf(theSecondElm);

  if (indexOfTheFistElm == -1 || indexOfTheSecondElm == -1) {
    print('Not found swappable elements in the list.');
    return;
  }

  // Remove the second elm,  insert second elm to the index of the first elm
  // note:  remove method is a mutable function
  // Now, index of the first element is indexOfTheFirst + 1
  phones.insert(
      indexOfTheFistElm < indexOfTheSecondElm
          ? indexOfTheFistElm
          : indexOfTheSecondElm,
      phones.removeAt(indexOfTheFistElm < indexOfTheSecondElm
          ? indexOfTheSecondElm
          : indexOfTheFistElm));

  // remove indexOfTheFirst + 1
  phones.add(phones.removeAt(indexOfTheFistElm < indexOfTheSecondElm
      ? indexOfTheFistElm + 1
      : indexOfTheSecondElm + 1));

  print(phones);
  print(
      '${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');
}
