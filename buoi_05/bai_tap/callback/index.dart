import 'dart:async';

void textField({
  required String text,
  Function(String)? onChanged,
}) {
  if (onChanged != null) {
    onChanged('new text');
  }
}

void timePeriodic({
  required int seconds,
  required Function(int) callback,
}) {
  int count = 0;
  Timer.periodic(Duration(seconds: 1), (Timer t) {
    if (count == seconds) {
      callback(count);
      t.cancel();
    }
    count++;
  });
}

buttonCount() {
  int count = 0;
  return () {
    count++;
    print('count: $count');
  };
}

void main(List<String> args) {
  timePeriodic(
    seconds: 5,
    callback: (int count) {
      print('callback after: $count s');
    },
  );

  textField(
    text: 'old text',
    onChanged: (String newText) {
      print('new text: $newText');
    },
  );

  var count = buttonCount();
  count();
  count();
}
