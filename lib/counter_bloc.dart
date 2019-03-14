import "package:rxdart/rxdart.dart";

class Counter {
  final BehaviorSubject<int> _counter = BehaviorSubject<int>();
  Stream<int> get counter => _counter.stream;
  
  init() => _counter.add(0);

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