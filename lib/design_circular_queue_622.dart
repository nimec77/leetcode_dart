class MyCircularQueue {
  int _front = 0;
  int _rear = 0;
  int _size = 0;
  late final List<int> _queue;

  MyCircularQueue(int k) {
    _queue = List.filled(k, 0);
  }

  bool enQueue(int value) {
    if (isFull()) {
      return false;
    }
    _queue[_rear] = value;
    _rear = (_rear + 1) % _queue.length;
    _size++;
    return true;
  }

  bool deQueue() {
    if (isEmpty()) {
      return false;
    }
    _front = (_front + 1) % _queue.length;
    _size--;
    return true;
  }

  int front() {
    if (isEmpty()) {
      return -1;
    }
    return _queue[_front];
  }

  int rear() {
    if (isEmpty()) {
      return -1;
    }
    return _queue[(_rear - 1 + _queue.length) % _queue.length];
  }

  bool isEmpty() {
    return _size == 0;
  }

  bool isFull() {
    return _size == _queue.length;
  }

}
/**
 * Your MyCircularQueue object will be instantiated and called as such:
 * MyCircularQueue obj = MyCircularQueue(k);
 * bool param1 = obj.enQueue(value);
 * bool param2 = obj.deQueue();
 * int param3 = obj.Front();
 * int param4 = obj.Rear();
 * bool param5 = obj.isEmpty();
 * bool param6 = obj.isFull();
 */