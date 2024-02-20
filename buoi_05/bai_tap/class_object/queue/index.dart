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

  void enqueue(String element) {
    if (isFull()) {
      print('Queue is full');
    } else {
      list.add(element);
    }
  }

  void dequeue() {
    if (isEmpty()) {
      print('Queue is empty');
    } else {
      list.removeAt(0);
    }
  }
}

void main(List<String> args) {
  Queue queue = Queue(5);
  queue.enqueue('1');
  queue.enqueue('2');
}
