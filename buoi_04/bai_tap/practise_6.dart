void main(List<String> args) {
  // In ra màn hình toàn bộ số nguyên tố của 1 số n cho trước.
  int n = 100;
  List<int> primeNumbers = [];
  for (int i = 2; i <= n; i++) {
    bool isPrime = true;
    for (int j = 2; j <= i / 2; j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      primeNumbers.add(i);
    }
  }

  print('Prime numbers: $primeNumbers');
}
