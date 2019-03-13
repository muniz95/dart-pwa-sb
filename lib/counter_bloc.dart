import "package:rxdart/rxdart.dart";

class Counter {
  final BehaviorSubject<int> _counter = BehaviorSubject<int>();
  Stream<int> get counter => _counter.stream;

  increment() async {
    int currentValue = _counter.value ?? 0;
    _counter.add(currentValue + 1);
  }
  
  decrement() async {
    int currentValue = _counter.value ?? 0;
    _counter.add(currentValue - 1);
  }

  void dispose() {
    _counter.close();
  }
}