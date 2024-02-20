class Queue {
  final int capacity;
  final List<String> list = <String>[];

  Queue(this.capacity);

  bool isFull() {
    return list.length == capacity;
  }

  bool isEmpty() {
    return list.isEmpty;
  }

  void push(String element) {
    if (isFull()) {
      print('Queue is full');
    } else {
      list.add(element);
    }
  }

  String pop() {
    if (isEmpty()) {
      return 'Queue is empty';
    } else {
      return list.removeLast();
    }
  }
}

void main(List<String> args) {
  Queue stack = Queue(5);
  stack.push('1');
  stack.push('2');
  print(stack.pop());
}
