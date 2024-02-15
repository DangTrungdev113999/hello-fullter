void main(List<String> args) {
  // for (int i = 1; i <= 9; i++) {
  //   for (int j = 1; j <= 9; j++) {
  //     print('$i x $j = ${i * j} ${j == 9 ? '\n' : ''}');
  //   }
  // }
  String top = '';
  String middle = '';
  String bottom = '';

  for (int i = 1; i <= 9; i++) {
    String line = '';
    int total = 0;
    for (int j = 1; j <= 9; j++) {
      if (i == 1) {
        top += '----$j----      ';
      }

      total += i * j;
      line += '$j x $i = ${i * j} ${i * j >= 10 ? '    ' : '     '}';
    }
    bottom += '-------$total     ';
    middle += '$line\n';
  }

  print('$top\n$middle$bottom');
}
